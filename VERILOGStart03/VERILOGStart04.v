module VERILOGStart04(clk, buttonWaitingIN, buttonLeftIN, buttonRightIN, buttonSelectionIN, led1, led5, en);
	output[3:0] led1, en;
	output[6:0] led5;
	input clk, buttonWaitingIN, buttonLeftIN, buttonRightIN, buttonSelectionIN;
	
	parameter Waiting = 0,
					Selection = 1,
					Payment = 2,
					Implementation = 3,
					Unsuccessful = 4;
	
	reg[18:0] clkForIndication = 0;
	reg[1:0] indicator = 0;
	reg[3:0] en = 15, led1 = 0;
	reg latch = 0, buttonWaitingPrev = 1, buttonLeftPrev = 1, buttonRightPrev = 1, buttonSelectionPrev = 1, buttonWaiting = 1, buttonLeft = 1, buttonRight = 1, buttonSelection = 1, latchButtonWaitingIN = 0, latchButtonLeftIN = 1, latchButtonRightIN = 1, latchButtonSelectionIN = 1;
	reg[23:0] counter = 0; 
	reg[6:0] led5, bufferForIndicator0 = 0, bufferForIndicator1 = 0, bufferForIndicator2 = 0, bufferForIndicator3 = 0;
	
	reg[1:0] selectionDrink = 0;
	
	reg[2:0] stateCoffeeMachine = Waiting;
	
	reg buttonPrev;
	
	reg[7:0] money = 0, countButtonWaitingIN = 0, countButtonLeftIN = 0, countButtonSelectionIN = 0, countButtonRightIN = 0;
	
	reg[7:0] procent = 0;
	reg[25:0] procentCount = 0;
	reg[28:0] timeForUnsuccessfulMessage = 0;
	
	reg[3:0] digit0 = 0, digit1 = 0, digit2 = 0, digit3 = 0, digitBuf1 = 0, digitBuf2 = 0, digitBuf3 = 0;
	
	// делитель частоты для динамической подсветки индикаторов
	always@(posedge clk)
	begin
		if (clkForIndication < 18'd250000)
			begin
				clkForIndication <= clkForIndication + 1;
			end	
		else
			begin
				clkForIndication <= 0;
				if (indicator < 2'd3)
					begin
						indicator <= indicator + 1;
					end
				else
					begin
						indicator <= 0;
					end				
			end
	end
	
	// последовательный перебор индикаторов и вывод значения из буфера
	always@(posedge clk)
	begin
		case (indicator)
			2'd0 :  
				begin
					en <= 4'b0111;
					led5 <= bufferForIndicator0;	
				end		
			2'd1 :
				begin
					en <= 4'b1011;
					led5 <= bufferForIndicator1;	
				end	
			2'd2 :
				begin
					en <= 4'b1101;
					led5 <= bufferForIndicator2;
				end	
			2'd3 :
				begin
					en <= 4'b1110;
					led5 <= bufferForIndicator3;
				end	
			default :
				begin
					en <= 4'b1111;
					led5 <= 8'b0000000;
				end
		endcase;
	end
	
	// индикация светодиодов в зависимости от состояния CoffeeMachine 
	always@(posedge clk)
	begin
		case (stateCoffeeMachine)
			Waiting : 
				begin
					if (counter < 24'd16666667)
						begin
							counter <= counter + 1;
						end	
					else 
						begin
							counter <= 0;
							if (latch == 1'b0)
								begin
									latch <= 1;
									led1 <= 4'b1111;
								end	
							else	
								begin
									led1 <= ~led1;
								end	
						end	
				end	
			Selection :
				begin
					latch <= 0;
					led1 <= 4'b0011;
				end	
			Payment :
				begin
					latch <= 0;
					led1 <= 4'b0001;
				end	
			Implementation :
				begin
					latch <= 0;
					led1 <= 4'b0000;
				end	
			Unsuccessful :
				begin
					latch <= 0;
					led1 <= 4'b0000;
				end
			default :
				begin
					latch <= 0;
					led1 <= 4'b1111;	
				end	
		endcase
	end
	
	// запоминаем предыдущее состояние кнопок
	always@(posedge clk)
	begin
		buttonWaitingPrev <= buttonWaiting; 
		buttonLeftPrev <= buttonLeft;
		buttonRightPrev <= buttonRight;
		buttonSelectionPrev <= buttonSelection;
	end
	
	// Фильтруем кнопки
	always@(posedge clk)
	begin	
		if (buttonWaitingIN == 1)
			begin
				if (latchButtonWaitingIN == 0)
					begin
						latchButtonWaitingIN <= 1;
						countButtonWaitingIN <= 0;
					end	
				else
					begin
						if (countButtonWaitingIN < 100) 
							countButtonWaitingIN <= countButtonWaitingIN + 1;
						else 
							begin
								buttonWaiting <= 1;
								countButtonWaitingIN <= 0;
							end	
					end
			end		
		else
			begin
				if (latchButtonWaitingIN == 1)
					begin
						latchButtonWaitingIN <= 0;
						countButtonWaitingIN <= 0;
					end	
				else
					begin
						if (countButtonWaitingIN < 100) 
							countButtonWaitingIN <= countButtonWaitingIN + 1;
						else 
							begin
								buttonWaiting <= 0;
								countButtonWaitingIN <= 0;
							end	
					end	
			end
	end
	
	always@(posedge clk)
	begin	
		if (buttonLeftIN == 1)
			begin
				if (latchButtonLeftIN == 0)
					begin
						latchButtonLeftIN <= 1;
						countButtonLeftIN <= 0;
					end	
				else
					begin
						if (countButtonLeftIN < 100) 
							countButtonLeftIN <= countButtonLeftIN + 1;
						else 
							begin
								buttonLeft <= 1;
								countButtonLeftIN <= 0;
							end	
					end
			end		
		else
			begin
				if (latchButtonLeftIN == 1)
					begin
						latchButtonLeftIN <= 0;
						countButtonLeftIN <= 0;
					end	
				else
					begin
						if (countButtonLeftIN < 100) 
							countButtonLeftIN <= countButtonLeftIN + 1;
						else 
							begin
								buttonLeft <= 0;
								countButtonLeftIN <= 0;
							end		
					end	
			end
	end
	
	always@(posedge clk)
	begin	
		if (buttonRightIN == 1)
			begin
				if (latchButtonRightIN == 0)
					begin
						latchButtonRightIN <= 1;
						countButtonRightIN <= 0;
					end	
				else
					begin
						if (countButtonRightIN < 100) 
							countButtonRightIN <= countButtonRightIN + 1;
						else 
							begin
								buttonRight <= 1;
								countButtonRightIN <= 0;
							end	
					end
			end		
		else
			begin
				if (latchButtonRightIN == 1)
					begin
						latchButtonRightIN <= 0;
						countButtonRightIN <= 0;
					end	
				else
					begin
						if (countButtonRightIN < 100) 
							countButtonRightIN <= countButtonRightIN + 1;
						else 
							begin
								buttonRight <= 0;
								countButtonRightIN <= 0;
							end	
					end	
			end
	end
	
	always@(posedge clk)
	begin	
		if (buttonSelectionIN == 1)
			begin
				if (latchButtonSelectionIN == 0)
					begin
						latchButtonSelectionIN <= 1;
						countButtonSelectionIN <= 0;
					end	
				else
					begin
						if (countButtonSelectionIN < 100) 
							countButtonSelectionIN <= countButtonSelectionIN + 1;
						else 
							begin
								buttonSelection <= 1;
								countButtonSelectionIN <= 0;
							end	
					end
			end		
		else
			begin
				if (latchButtonSelectionIN == 1)
					begin
						latchButtonSelectionIN <= 0;
						countButtonSelectionIN <= 0;
					end	
				else
					begin
						if (countButtonSelectionIN < 100) 
							countButtonSelectionIN <= countButtonSelectionIN + 1;
						else 
							begin
								buttonSelection <= 0;
								countButtonSelectionIN <= 0;
							end	
					end	
			end
	end
	
	// CoffeeMachine
	always@(posedge clk)
	begin
			case (stateCoffeeMachine) 
				Waiting :
					begin
						if ((buttonWaiting == 0 && buttonWaitingPrev == 1) ||
							(buttonLeft == 0 && buttonLeftPrev == 1) ||
							(buttonRight == 0 && buttonRightPrev == 1) ||
							(buttonSelection == 0 && buttonSelectionPrev == 1))
							begin
								stateCoffeeMachine <= Selection;
							end
						selectionDrink <= 0;
						money <= 0;
						procent <= 0;
						procentCount <= 0;
						timeForUnsuccessfulMessage <= 0;
					end	
				Selection :
					begin
						if (buttonLeft == 0 && buttonLeftPrev == 1)
							begin
								if (selectionDrink == 0)
									selectionDrink <= 3;
								else 
									selectionDrink <= selectionDrink - 1;
							end	
						else if (buttonRight == 0 && buttonRightPrev == 1) 
							begin
								if (selectionDrink == 3)
									selectionDrink <= 0;
								else 
									selectionDrink <= selectionDrink + 1;
							end	
						else if (buttonSelection == 0 && buttonSelectionPrev == 1)
							begin
								stateCoffeeMachine <= Payment;
							end	
						else if (buttonWaiting == 0 && buttonWaitingPrev == 1)
							begin
								stateCoffeeMachine <= Waiting;
							end
					end
				Payment :
					begin
						if (buttonLeft == 0 && buttonLeftPrev == 1)
							begin
								if (money > 0) 
									money <= money - 5;
							end	
						else if (buttonRight == 0 && buttonRightPrev == 1)
							begin
								if (money < 50) 
									money <= money + 5;
							end	
						else if (buttonSelection == 0 && buttonSelectionPrev == 1)	
							begin
								case (selectionDrink)
									0 :
										begin
											if (money >= 10)
												stateCoffeeMachine <= Implementation;
											else 
												stateCoffeeMachine <= Unsuccessful;
										end		
									1 : 
										begin
											if (money >= 20)
												stateCoffeeMachine <= Implementation;
											else 
												stateCoffeeMachine <= Unsuccessful;
										end	
									2 :
										begin
											if (money >= 35)
												stateCoffeeMachine <= Implementation;
											else 
												stateCoffeeMachine <= Unsuccessful;
										end
									3 :
										begin
											if (money >= 50)
												stateCoffeeMachine <= Implementation;
											else 
												stateCoffeeMachine <= Unsuccessful;
										end
									default : stateCoffeeMachine <= Waiting;
								endcase	
							end	
						else if (buttonWaiting == 0 && buttonWaitingPrev == 1)
							begin
								stateCoffeeMachine <= Waiting;		
							end
					end	
				Implementation :
					begin
						if (procent > 100)
							stateCoffeeMachine <= Waiting;
						else 
							begin
								if (procentCount < 20000000)
									procentCount <= procentCount + 1;
								else 
									begin
										procentCount <= 0;
										procent <= procent + 1;
									end
							end
					end
				Unsuccessful :
					begin
						if (timeForUnsuccessfulMessage < 200000000)
							timeForUnsuccessfulMessage <= timeForUnsuccessfulMessage + 1;
						else 
							stateCoffeeMachine <= Waiting;
					end				
				default : ;
			endcase			
	end
	
	// вывод информации на индикаторы в зависимости от состояния CoffeeMachine и других текущих настроек
	
	always@(posedge clk)
	begin
			case (stateCoffeeMachine)
				Waiting :
					begin
						bufferForIndicator0 <= 7'b1111111;
						bufferForIndicator1 <= 7'b1111111;
						bufferForIndicator2 <= 7'b1111111;
						bufferForIndicator3 <= 7'b1111111;
					end	
				Selection : 
					begin
						case (selectionDrink) 
							2'd0 :
								begin
									bufferForIndicator0 <= 7'b1111111;
									bufferForIndicator1 <= 7'b0110000;
									bufferForIndicator2 <= 7'b0100100;
									bufferForIndicator3 <= 7'b0011000;
								end	
							2'd1 :
								begin
									bufferForIndicator0 <= 7'b1111111;
									bufferForIndicator1 <= 7'b0110001;
									bufferForIndicator2 <= 7'b0000001;
									bufferForIndicator3 <= 7'b0111000;
								end	
							2'd2 : 
								begin
									bufferForIndicator0 <= 7'b1111111;
									bufferForIndicator1 <= 7'b0110001;
									bufferForIndicator2 <= 7'b0001000;
									bufferForIndicator3 <= 7'b0011000;
								end	
							2'd3 : 
								begin
									bufferForIndicator0 <= 7'b1111111;
									bufferForIndicator1 <= 7'b1110001;
									bufferForIndicator2 <= 7'b0001000;
									bufferForIndicator3 <= 7'b1110000;
								end	
							default
								begin
									bufferForIndicator0 <= 7'b1111111;
									bufferForIndicator1 <= 7'b1111111;
									bufferForIndicator2 <= 7'b1111111;
									bufferForIndicator3 <= 7'b1111111;
								end	
						endcase
					end		
				Payment : 
					begin
						bufferForIndicator0 <= 7'b1111111;
						bufferForIndicator1 <= 7'b1111111;
						digitBuf3 <= money % 10;
						digitBuf2 <= (money - (money % 10)) / 10;
						digit3 <= digitBuf3;
						digit2 <= digitBuf2;
							case (digit3)
								0 : bufferForIndicator3 <= 7'b0000001;
								1 : bufferForIndicator3 <= 7'b1001111;
								2 : bufferForIndicator3 <= 7'b0010010;
								3 : bufferForIndicator3 <= 7'b0000110;
								4 : bufferForIndicator3 <= 7'b1001100;
								5 : bufferForIndicator3 <= 7'b0100100;
								6 : bufferForIndicator3 <= 7'b0100000;
								7 : bufferForIndicator3 <= 7'b0001111;
								8 : bufferForIndicator3 <= 7'b0000000;
								9 : bufferForIndicator3 <= 7'b0000100;
								default : bufferForIndicator3 <= 7'b0000001;
							endcase
							case (digit2)							
								0 : 
									begin
										if (money > 9)
											bufferForIndicator2 <= 7'b0000001;
										else
											bufferForIndicator2 <= 7'b1111111;
									end		
								1 : bufferForIndicator2 <= 7'b1001111;
								2 : bufferForIndicator2 <= 7'b0010010;
								3 : bufferForIndicator2 <= 7'b0000110;
								4 : bufferForIndicator2 <= 7'b1001100;
								5 : bufferForIndicator2 <= 7'b0100100;
								6 : bufferForIndicator2 <= 7'b0100000;
								7 : bufferForIndicator2 <= 7'b0001111;
								8 : bufferForIndicator2 <= 7'b0000000;
								9 : bufferForIndicator2 <= 7'b0000100;
								default : bufferForIndicator2 <= 7'b0000001;
							endcase
					end		
				Implementation :
					begin
						bufferForIndicator0 <= 7'b1111111;
						digit3 <= procent % 10;
						if (procent == 100)
							digit2 <= 0;
						else 	
							digit2 <= (procent - (procent % 10)) / 10;
						digit1 <= (procent - (procent % 100)) / 100;
						case (digit3)
								0 : bufferForIndicator3 <= 7'b0000001;
								1 : bufferForIndicator3 <= 7'b1001111;
								2 : bufferForIndicator3 <= 7'b0010010;
								3 : bufferForIndicator3 <= 7'b0000110;
								4 : bufferForIndicator3 <= 7'b1001100;
								5 : bufferForIndicator3 <= 7'b0100100;
								6 : bufferForIndicator3 <= 7'b0100000;
								7 : bufferForIndicator3 <= 7'b0001111;
								8 : bufferForIndicator3 <= 7'b0000000;
								9 : bufferForIndicator3 <= 7'b0000100;
								default : bufferForIndicator3 <= 7'b0000001;
						endcase
							case (digit2)							
								0 : 
									begin
										if (procent > 9)
												bufferForIndicator2 <= 7'b0000001;
										else
											bufferForIndicator2 <= 7'b1111111;
									end		
								1 : bufferForIndicator2 <= 7'b1001111;
								2 : bufferForIndicator2 <= 7'b0010010;
								3 : bufferForIndicator2 <= 7'b0000110;
								4 : bufferForIndicator2 <= 7'b1001100;
								5 : bufferForIndicator2 <= 7'b0100100;
								6 : bufferForIndicator2 <= 7'b0100000;
								7 : bufferForIndicator2 <= 7'b0001111;
								8 : bufferForIndicator2 <= 7'b0000000;
								9 : bufferForIndicator2 <= 7'b0000100;
								default : bufferForIndicator2 <= 7'b0000001;
							endcase
							case (digit1)
								0 : 
									begin
										if (procent > 99)
											bufferForIndicator1 <= 7'b0000001;
										else
											bufferForIndicator1 <= 7'b1111111;
									end
								1 : bufferForIndicator1 <= 7'b1001111;
								2 : bufferForIndicator1 <= 7'b0010010;
								3 : bufferForIndicator1 <= 7'b0000110;
								4 : bufferForIndicator1 <= 7'b1001100;
								5 : bufferForIndicator1 <= 7'b0100100;
								6 : bufferForIndicator1 <= 7'b0100000;
								7 : bufferForIndicator1 <= 7'b0001111;
								8 : bufferForIndicator1 <= 7'b0000000;
								9 : bufferForIndicator1 <= 7'b0000100;
								default : bufferForIndicator1 <= 7'b0000001;
							endcase
					end		
				Unsuccessful :
					begin
						bufferForIndicator0 <= 7'b1111111;
						bufferForIndicator1 <= 7'b1110001;
						bufferForIndicator2 <= 7'b0100100;
						bufferForIndicator3 <= 7'b0100100;
					end
				default :
					begin
						bufferForIndicator0 <= 7'b1111111;
						bufferForIndicator1 <= 7'b1111111;
						bufferForIndicator2 <= 7'b1111111;
						bufferForIndicator3 <= 7'b1111111;	
					end	
			endcase
	end

	
endmodule
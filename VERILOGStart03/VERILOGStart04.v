module VERILOGStart04(clk, buttonWaiting, buttonLeft, buttonRight, buttonSelection, led1, led5, en);
	output[3:0] led1, en;
	output[7:0] led5;
	input clk, buttonWaiting, buttonLeft, buttonRight, buttonSelection;
	
	parameter Waiting = 0,
					Selection = 1,
					Payment = 2,
					Implementation = 3,
					Unsuccessful = 4;
	
	reg[18:0] clkForIndication = 0;
	reg[1:0] indicator = 0;
	reg[3:0] en = 15, led1 = 0, bufferForIndicator0 = 0, bufferForIndicator1 = 0, bufferForIndicator2 = 0, bufferForIndicator3 = 0;
	reg latch = 0, buttonWaitingPrev, buttonLeftPrev, buttonRightPrev, buttonSelectionPrev;
	reg[23:0] counter = 0; 
	reg[7:0] led5;
	
	reg[1:0] selectionDrink = 0;
	
	reg[2:0] stateCoffeeMachine = 0;
	
	reg buttonPrev;
	
	reg[7:0] money = 0;
	
	reg[7:0] procent = 0;
	reg[25:0] procentCount = 0;
	
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
	
	// вывод информации на индикаторы в зависимости от состояния CoffeeMachine и других текущих настроек
	
	always@(posedge clk)
	begin
			case (stateCoffeeMachine)
				Waiting :
					begin
						bufferForIndicator0 <= 8'b1111111;
						bufferForIndicator1 <= 8'b1111111;
						bufferForIndicator2 <= 8'b1111111;
						bufferForIndicator3 <= 8'b1111111;
					end	
				Selection : 
					begin
						case (selectionDrink) 
							2'd0 :
								begin
									bufferForIndicator0 <= 8'b1111111;
									bufferForIndicator1 <= 8'b0110000;
									bufferForIndicator2 <= 8'b0100100;
									bufferForIndicator3 <= 8'b0011000;
								end	
							2'd1 :
								begin
									bufferForIndicator0 <= 8'b1111111;
									bufferForIndicator1 <= 8'b0110001;
									bufferForIndicator2 <= 8'b0000001;
									bufferForIndicator3 <= 8'b0111000;
								end	
							2'd2 : 
								begin
									bufferForIndicator0 <= 8'b1111111;
									bufferForIndicator1 <= 8'b0110001;
									bufferForIndicator2 <= 8'b0001000;
									bufferForIndicator3 <= 8'b0011000;
								end	
							2'd3 : 
								begin
									bufferForIndicator0 <= 8'b1111111;
									bufferForIndicator1 <= 8'b1110001;
									bufferForIndicator2 <= 8'b0001000;
									bufferForIndicator3 <= 8'b1110000;
								end	
							default
								begin
									bufferForIndicator0 <= 8'b1111111;
									bufferForIndicator1 <= 8'b1111111;
									bufferForIndicator2 <= 8'b1111111;
									bufferForIndicator3 <= 8'b1111111;
								end	
						endcase
					end		
				Payment : 
					begin
						bufferForIndicator0 <= 8'b1111111;
						bufferForIndicator1 <= 8'b1111111;
						digitBuf3 <= money % 10;
						digitBuf2 <= (money - (money % 10)) / 10;
						digit3 <= digitBuf3;
						digit2 <= digitBuf2;
							case (digit3)
								0 : bufferForIndicator3 <= 8'b0000001;
								1 : bufferForIndicator3 <= 8'b1001111;
								2 : bufferForIndicator3 <= 8'b0010010;
								3 : bufferForIndicator3 <= 8'b0000110;
								4 : bufferForIndicator3 <= 8'b1001100;
								5 : bufferForIndicator3 <= 8'b0100100;
								6 : bufferForIndicator3 <= 8'b0100000;
								7 : bufferForIndicator3 <= 8'b0001111;
								8 : bufferForIndicator3 <= 8'b0000000;
								9 : bufferForIndicator3 <= 8'b0000100;
								default : bufferForIndicator3 <= 8'b0000001;
							endcase
							case (digit2)							
								0 : 
									begin
										if (money > 9)
											bufferForIndicator2 <= 8'b0000001;
										else
											bufferForIndicator2 <= 8'b1111111;
									end		
								1 : bufferForIndicator2 <= 8'b1001111;
								2 : bufferForIndicator2 <= 8'b0010010;
								3 : bufferForIndicator2 <= 8'b0000110;
								4 : bufferForIndicator2 <= 8'b1001100;
								5 : bufferForIndicator2 <= 8'b0100100;
								6 : bufferForIndicator2 <= 8'b0100000;
								7 : bufferForIndicator2 <= 8'b0001111;
								8 : bufferForIndicator2 <= 8'b0000000;
								9 : bufferForIndicator2 <= 8'b0000100;
								default : bufferForIndicator2 <= 8'b0000001;
							endcase
					end		
				Implementation :
					begin
						bufferForIndicator0 <= 8'b1111111;
						digit3 <= procent % 10;
						if (procent == 100)
							digit2 <= 0;
						else 	
							digit2 <= (procent - (procent % 10)) / 10;
						digit1 <= (procent - (procent % 10) - (procent % 100)) / 100;
						case (digit3)
								0 : bufferForIndicator3 <= 8'b0000001;
								1 : bufferForIndicator3 <= 8'b1001111;
								2 : bufferForIndicator3 <= 8'b0010010;
								3 : bufferForIndicator3 <= 8'b0000110;
								4 : bufferForIndicator3 <= 8'b1001100;
								5 : bufferForIndicator3 <= 8'b0100100;
								6 : bufferForIndicator3 <= 8'b0100000;
								7 : bufferForIndicator3 <= 8'b0001111;
								8 : bufferForIndicator3 <= 8'b0000000;
								9 : bufferForIndicator3 <= 8'b0000100;
								default : bufferForIndicator3 <= 8'b0000001;
						endcase
							case (digit2)							
								0 : 
									begin
										if (procent > 9)
												bufferForIndicator2 <= 8'b0000001;
										else
											bufferForIndicator2 <= 8'b1111111;
									end		
								1 : bufferForIndicator2 <= 8'b1001111;
								2 : bufferForIndicator2 <= 8'b0010010;
								3 : bufferForIndicator2 <= 8'b0000110;
								4 : bufferForIndicator2 <= 8'b1001100;
								5 : bufferForIndicator2 <= 8'b0100100;
								6 : bufferForIndicator2 <= 8'b0100000;
								7 : bufferForIndicator2 <= 8'b0001111;
								8 : bufferForIndicator2 <= 8'b0000000;
								9 : bufferForIndicator2 <= 8'b0000100;
								default : bufferForIndicator2 <= 8'b0000001;
							endcase
							case (digit1)
								0 : 
									begin
										if (procent > 99)
											bufferForIndicator1 <= 8'b0000001;
										else
											bufferForIndicator1 <= 8'b1111111;
									end
								1 : bufferForIndicator1 <= 8'b1001111;
								2 : bufferForIndicator1 <= 8'b0010010;
								3 : bufferForIndicator1 <= 8'b0000110;
								4 : bufferForIndicator1 <= 8'b1001100;
								5 : bufferForIndicator1 <= 8'b0100100;
								6 : bufferForIndicator1 <= 8'b0100000;
								7 : bufferForIndicator1 <= 8'b0001111;
								8 : bufferForIndicator1 <= 8'b0000000;
								9 : bufferForIndicator1 <= 8'b0000100;
								default : bufferForIndicator1 <= 8'b0000001;
							endcase
					end		
				Unsuccessful :
					begin
						bufferForIndicator0 <= 8'b1111111;
						bufferForIndicator1 <= 8'b1110001;
						bufferForIndicator2 <= 8'b0100100;
						bufferForIndicator3 <= 8'b0100100;
					end
				default :
					begin
						bufferForIndicator0 <= 8'b1111111;
						bufferForIndicator1 <= 8'b1111111;
						bufferForIndicator2 <= 8'b1111111;
						bufferForIndicator3 <= 8'b1111111;	
					end	
			endcase
	end

	
endmodule
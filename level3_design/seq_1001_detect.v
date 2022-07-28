module moore1001(
	input clk, rst, I,
	output reg [1:0] ps, ns,
	output reg Y);
	// States
	parameter [1:0] S0 = 2'b00,
					S1 = 2'b01,
					S2 = 2'b10,
					S3 = 2'b11;
            // Present state block
	always @(posedge clk, posedge rst)
	begin
		if(rst)
          ps <= S0;
		else
			ps <= ns;
	end
	// Next state block
	always @(posedge clk , I, ps)
	begin
		case(ps)
			S0: begin
					if(I)
						ns <= S1;
					else
						ns <= S0;
				end
			S1: begin
					if(I)
						ns <= S1;
					else
						ns <= S2;
				end
			S2: begin
					if(I)
						ns <= S3;
					else
						ns <= S0;
				end
			S3: begin
					if(I)
						ns <= S1;
					else
						ns <= S0;
                                                           end
			default: ns <= S0;
		endcase
	end
	



// Output block
	always @(posedge clk, ps)
	begin
		case(ps)
			S0: Y <= 0;
			S1: Y <= 0;
			S2: Y <= 0;
			S3: Y <= 1;
			default: Y <= 0;
		endcase
	end
endmodule

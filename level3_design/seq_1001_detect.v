
// Verilog module for Sequence detection: 1001 without overlap
module seq_1001_detect(seq_seen, inp_bit, reset, clk);

  output seq_seen;
  input inp_bit;
  input reset;
  input clk;

  parameter IDLE = 0,
            SEQ_1 = 1, 
            SEQ_10 = 2,
            SEQ_100 = 3,
            SEQ_1001 = 4;

  reg [2:0] current_state, next_state;

  // if the current state of the FSM has the sequence 1001, then the output is
  // high
  assign seq_seen = current_state == SEQ_1001 ? 1 : 0;

  // state transition
  always @(posedge clk)
  begin
    if(reset)
    begin
      current_state <= IDLE;
    end
    else
    begin
      current_state <= next_state;
    end
  end

  // state transition based on the input and current state
  always @(inp_bit or current_state)
  begin
    case(current_state)
      IDLE:
      begin
        if(inp_bit == 1)
          next_state = SEQ_1;
        else
          next_state = IDLE;
      end
      SEQ_1:
      begin
        if(inp_bit == 1)
          next_state = SEQ_1;
        else
          next_state = SEQ_10;
      end
      SEQ_10:
      begin
        if(inp_bit == 1)
          next_state = SEQ_1;
        else
          next_state = SEQ_100;
      end
      SEQ_100:
      begin
        if(inp_bit == 1)
          next_state = SEQ_1001;
        else
          next_state = IDLE;
      end
      SEQ_1001:
      begin
       if(inp_bit == 1)
          next_state = SEQ_1;
        else
          next_state = IDLE;
       end
      default : next_state = IDLE;
    endcase
  end
endmodule

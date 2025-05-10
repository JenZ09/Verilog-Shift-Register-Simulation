module shift_register (
    input clk,             
    input reset,          
    input serial_in,       
    output reg serial_out,
    output reg [3:0] parallel_out 
);
    reg [3:0] shift_reg;   

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg = 4'b0000;
            serial_out = 0;
            parallel_out = 4'b0000;
        end else begin
	    serial_out = shift_reg[3];
            shift_reg = {shift_reg[2:0], serial_in};  
            parallel_out = shift_reg;
        end
    end
endmodule

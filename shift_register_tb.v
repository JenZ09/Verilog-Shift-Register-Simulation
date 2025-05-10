`timescale 1ns/1ps
module shift_register_tb;
    reg clk;
    reg reset;
    reg serial_in;
    wire serial_out;
    wire [3:0] parallel_out;
    shift_register uut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .serial_out(serial_out),
        .parallel_out(parallel_out)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        $dumpfile("shift_register.vcd");
        $dumpvars(0, shift_register_tb);

        reset = 1;
        serial_in = 0;
        #10 reset = 0; 
        
        #10 serial_in = 1; 
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 1;
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 $finish;
    end
    initial begin
        $monitor("%0t ns: clk=%b, serial_in=%b, serial_out=%b, parallel_out=%b",
                 $time, clk, serial_in, serial_out, parallel_out);
    end
endmodule

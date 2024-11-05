module ALU(
    input [3:0] A , 
    input [3:0] B , 
    input[2:0] control,
    output reg [3:0] result
);

    always @(*) begin
        case (control)
            3'b000: result = A + B; // add
            3'b001: result = A - B; // sub
            3'b010: result = A & B; // and
            3'b011: result = A | B; // or
            3'b100: result = ~A; //not A
            default: result=4'b0000; // def value
        endcase
    end
endmodule

//TEST BENCH:

module ALU_Testbench;
    reg[3:0] A ,B;
    reg[2:0] control;
    wire [3:0] result;

    ALU uut(
        .A(A),
        .B(B),
        .control(control),
        .result(result)
    );
    
    initial begin
        $monitor("Time: %0t | A: %b | B: %b | control: %b | result: %b", $time, A, B, control, result);
    end

    initial begin
    // sum simulation
        A = 4'b0101; B=4'b0011 ; control = 3'b000; #10; // sum the number 3+5

    //sub simulation
        A = 4'b1000; B = 4'b0010; control = 3'b001; #10; // sub the num 8-2

    //and simulation
        A = 4'b1100; B = 4'b1010; control = 3'b010; #10; // AND: 1100 & 1010 = 1000

    // OR simulation
        A = 4'b1100; B = 4'b1010; control = 3'b011; #10; // OR: 1100 | 1010 = 1110

    // NOT simulation
        A = 4'b1010; control = 3'b100; #10; // NOT: ~1010 = 0101

        $finish; //end of simulation

    end
endmodule
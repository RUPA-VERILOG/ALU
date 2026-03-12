module ALU(
    input [7:0] A,B,
    input [2:0] ALU_sel,
    output reg [7:0] ALU_Out,
    output reg carry
);

always @(*) 
begin
    carry = 0;
    ALU_Out = 8'b00000000;

    case(ALU_sel)
        3'b000: {carry,ALU_Out} = A + B;
        3'b001: {carry,ALU_Out} = A - B;
        3'b010: ALU_Out = A & B;
        3'b011: ALU_Out = A | B;
        3'b100: ALU_Out = ~A;
        3'b101: ALU_Out = A ^ B;
        3'b110: ALU_Out = A << 1; // LEFT SHIFT
        3'b111: ALU_Out = A >> 1; // RIGHT SHIFT
        default: ALU_Out = 0;
    endcase
end

endmodule

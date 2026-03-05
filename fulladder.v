module fulladder(output [3:0]Sum, output Cout, input [3:0] X,Y, input Cin);
assign {Cout, Sum} = X + Y + Cin;
endmodule

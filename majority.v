//CPEN 230L Lab 6 part 2, Majority Gate
// Matthew Casino, 3/2/26
module majority(output W, input X, Y, Z);
//structural implementation of XY + XZ + YZ
wire A, B, C;

and(A, X, Y);
and(B, X, Z);
and(C, Y, Z);

or(W, A, B, C);

endmodule

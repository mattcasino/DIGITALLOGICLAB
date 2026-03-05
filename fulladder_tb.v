module fulladder_tb;
  reg [3:0] X, Y;
  wire [3:0] Sum;
  reg Cin;
  wire Cout;
  fulladder add(Sum, Cout, X, Y, Cin);

  //count accounts for the 255 different cases of 4 bit add
  reg [7:0] count;
  initial begin
    count = 8'b0;
    $display("time X    Y    Sum");
    $monitor("%4d %4d %4d %4d", $time, X, Y, Sum);

    //after 255 * 5 ticks, we are done
    #1275 $finish;
  end

  always begin
    {X, Y} = count; //use concatenation to generate numbers
    Cin = 0;
    #5 count = count+1;
  end
endmodule

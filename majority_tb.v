module majority_tb;
  reg a, b, c;
  wire d;
  reg [2:0] count;

  majority log(d, a, b, c);

  initial begin
    //count may be treated as a 3 bit int
    count = 3'b0;
    //formatting output
    $display("time a b c d");
    $monitor("%4d %1d %1d %1d %1d",
      $time, a, b, c, d);
    #40 $finish;
  end

  always begin
  //increment count every 5 ticks
    {a, b, c} = count;
    #5 count = count+1;
  end
endmodule

`timescale 1ns / 1ps


module odev1(
    input clock,
    output reg red,
    output reg blue,
    output reg green
    );
    
    
    reg [31:0] counter = 0;
 
always @(posedge clock) begin
  if (counter < 10000000) begin // 10 saniye boyunca kýrmýzý ýþýk yanacak
    red <= 1;
    green <= 0;
    blue <= 0;
  end else if (counter < 12000000) begin // 2 saniye boyunca mavi ýþýk yanacak
    red <= 0;
    green <= 0;
    blue <= 1;
  end else if (counter < 17000000) begin // 5 saniye boyunca yeþil ýþýk yanacak
    red <= 0;
    green <= 1;
    blue <= 0;
  end else begin // Döngü tekrar edecek
    counter <= 0;
  end
 
  counter <= counter + 1; // Zamanlayýcýyý artýr
end
 
endmodule

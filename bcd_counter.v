module bcd_counter (
    input wire clk,
    input wire reset,
    input wire enable,
    output reg [3:0] count
);

always @(posedge clk) begin
    if (reset)
        count <= 4'b0000;
    else if (enable) begin
        if (count == 4'b1001)
            count <= 4'b0000;
        else
            count <= count + 1'b1;
    end
end

endmodule

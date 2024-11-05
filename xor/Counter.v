module Counter (
    input clk, // אות שעון
    input reset, // איפוס
    output reg [3:0] count // מונה 4 ביטים
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0; // אם יש אות איפוס, מאפסים את המונה
        else
            count <= count + 1; // אחרת, מעלים את הערך
    end
endmodule

module comparator_behavioral (
    input  [3:0] a,
    input  [3:0] b,
    output reg   esit,
    output reg   buyuk,
    output reg   kucuk
);

    always @(*) begin
        if (a > b) begin
            buyuk = 1'b1;
            kucuk = 1'b0;
            esit  = 1'b0;
        end else if (a < b) begin
            buyuk = 1'b0;
            kucuk = 1'b1;
            esit  = 1'b0;
        end else begin
            buyuk = 1'b0;
            kucuk = 1'b0;
            esit  = 1'b1;
        end
    end

endmodulemodule comparator_behavioral (
    input  [3:0] a,
    input  [3:0] b,
    output reg   esit,
    output reg   buyuk,
    output reg   kucuk
);

    always @(*) begin
        if (a > b) begin
            buyuk = 1'b1;
            kucuk = 1'b0;
            esit  = 1'b0;
        end else if (a < b) begin
            buyuk = 1'b0;
            kucuk = 1'b1;
            esit  = 1'b0;
        end else begin
            buyuk = 1'b0;
            kucuk = 1'b0;
            esit  = 1'b1;
        end
    end

endmodulemodule comparator_behavioral (
    input  [3:0] a,
    input  [3:0] b,
    output reg   esit,
    output reg   buyuk,
    output reg   kucuk
);

    always @(*) begin
        if (a > b) begin
            buyuk = 1'b1;
            kucuk = 1'b0;
            esit  = 1'b0;
        end else if (a < b) begin
            buyuk = 1'b0;
            kucuk = 1'b1;
            esit  = 1'b0;
        end else begin
            buyuk = 1'b0;
            kucuk = 1'b0;
            esit  = 1'b1;
        end
    end

endmodule
module FFF8USER (
    input reset,
    input [7:0] plr,
    output reg [7:0] winner,
    output reg [6:0] seg
);

reg locked;

initial begin
    winner = 8'b00000000;
    seg    = 7'b1000000;
    locked = 1'b0;
end

// Winner detection and lock mechanism
always @(plr, reset) begin

    if (reset) begin
        winner = 8'b00000000;
        locked = 1'b0;
    end

    else if (!locked) begin

        // Priority detection
        // Player 1 has highest priority
        if (plr[0]) begin
            winner = 8'b00000001;
            locked = 1'b1;
        end

        else if (plr[1]) begin
            winner = 8'b00000010;
            locked = 1'b1;
        end

        else if (plr[2]) begin
            winner = 8'b00000100;
            locked = 1'b1;
        end

        else if (plr[3]) begin
            winner = 8'b00001000;
            locked = 1'b1;
        end

        else if (plr[4]) begin
            winner = 8'b00010000;
            locked = 1'b1;
        end

        else if (plr[5]) begin
            winner = 8'b00100000;
            locked = 1'b1;
        end

        else if (plr[6]) begin
            winner = 8'b01000000;
            locked = 1'b1;
        end

        else if (plr[7]) begin
            winner = 8'b10000000;
            locked = 1'b1;
        end

    end
end

// Seven-segment display decoder
always @(*) begin

    case (winner)

        8'b00000001:
            seg = 7'b1111001;   // 1

        8'b00000010:
            seg = 7'b0100100;   // 2

        8'b00000100:
            seg = 7'b0110000;   // 3

        8'b00001000:
            seg = 7'b0011001;   // 4

        8'b00010000:
            seg = 7'b0010010;   // 5

        8'b00100000:
            seg = 7'b0000010;   // 6

        8'b01000000:
            seg = 7'b1111000;   // 7

        8'b10000000:
            seg = 7'b0000000;   // 8

        default:
            seg = 7'b1000000;   // 0

    endcase

end

endmodule
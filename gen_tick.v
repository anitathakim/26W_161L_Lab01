//=========================================================================
// Name & Email must be EXACTLY as in Gradescope roster!
// Name: Anita Hakim
// Email: ahaki018@ucr.edu
// 
// Assignment name: 1
// Lab section: 
// TA: Allan Knight
// 
// I hereby certify that I have not received assistance on this assignment,
// or used code, from ANY outside source other than the instruction team
// (apart from what was provided in the starter file).
//
//=========================================================================

module gen_tick # ( parameter SRC_FREQ = 5000, parameter TICK_FREQ = 1) (
    input src_clk,
    input enable,
    output tick
);

// Declare registers and wires here
integer cnt = 0;
integer limit = SRC_FREQ / TICK_FREQ / 2; 
reg switch = 0;

always @(posedge src_clk) begin
    // put your code for the multiplier here
    if (enable) begin
        cnt <= cnt + 1;

        if (cnt >= limit) begin
            cnt <= 0;
            switch <= ~switch;
        end
    end else begin
        switch <= 0;
    end

end

// Change this assign statement to the actual tick value
assign tick = switch;

endmodule

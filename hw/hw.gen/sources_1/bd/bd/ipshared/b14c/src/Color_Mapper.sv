//-------------------------------------------------------------------------
//    Color_Mapper.sv                                                    --
//    Stephen Kempf                                                      --
//    3-1-06                                                             --
//                                                                       --
//    Modified by David Kesler  07-16-2008                               --
//    Translated by Joe Meng    07-07-2013                               --
//    Modified by Zuofu Cheng   08-19-2023                               --
//                                                                       --
//    Fall 2023 Distribution                                             --
//                                                                       --
//    For use with ECE 385 USB + HDMI                                    --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------


module  color_mapper ( input  logic [9:0] BallX, BallY, DrawX, DrawY, Ball_size,
                       output logic [3:0]  Red, Green, Blue,
                       
                       input logic [31:0] ctrl_reg, data_reg,
                       output logic [11:0] word_addr,
                       input logic [15:0] char_data,
                       input logic [11:0] foreground_colour, background_colour
                        );
    
    logic ball_on;
	 
 /* Old Ball: Generated square box by checking if the current pixel is within a square of length
    2*BallS, centered at (BallX, BallY).  Note that this requires unsigned comparisons.
	 
    if ((DrawX >= BallX - Ball_size) &&
       (DrawX <= BallX + Ball_size) &&
       (DrawY >= BallY - Ball_size) &&
       (DrawY <= BallY + Ball_size))
       )

     New Ball: Generates (pixelated) circle by using the standard circle formula.  Note that while 
     this single line is quite powerful descriptively, it causes the synthesis tool to use up three
     of the 120 available multipliers on the chip!  Since the multiplicants are required to be signed,
	  we have to first cast them from logic to int (signed by default) before they are multiplied). */
	  
    int DistX, DistY, Size;
    assign DistX = DrawX - BallX;
    assign DistY = DrawY - BallY;
    assign Size = Ball_size;
    assign word_addr = DrawX[9:5] + (DrawY[9:4])*20;
    logic [10:0] font_addr;
    logic invert;
    logic [7:0] to_be_printed, char_off;
    
    logic [1:0] reg_offset;
    assign reg_offset = DrawX[4:3];//(DrawX >> 3 + (DrawY >> 4)*80)/word_addr;

//    always_comb
//    begin
//        unique case (reg_offset)
//            2'b00:
//            begin
//                char_off = data_reg[6:0];
//                invert = data_reg[7];
//            end
//            2'b01:
//            begin
//                char_off = data_reg[14:8];
//                invert = data_reg[15];
//            end
//            2'b10:
//            begin
//                char_off = data_reg[22:16];
//                invert = data_reg[23];
//            end
//            2'b11:
//            begin
//                char_off = data_reg[30:24];
//                invert = data_reg[31];
//            end
//        endcase
//    end

    assign char_off = char_data[14:8];
    assign invert = char_data[15];
    assign font_addr = {char_off, DrawY[3:0]};
    
    font_rom(font_addr, to_be_printed);
  
//    always_comb
//    begin:Ball_on_proc
//        if ( (DistX*DistX + DistY*DistY) <= (Size * Size) )
//            ball_on = 1'b1;
//        else 
//            ball_on = 1'b0;
//     end 
       
    always_comb
    begin:RGB_Display       
        if (to_be_printed[7-DrawX[2:0]] == 1'b1 && invert == 0) begin
            Red = foreground_colour[11:8];
            Green = foreground_colour[7:4];
            Blue = foreground_colour[3:0];
        end    
        else if (to_be_printed[7-DrawX[2:0]] == 1'b0 && invert == 0) begin
            Red = background_colour[11:8];
            Green = background_colour[7:4];
            Blue = background_colour[3:0];
        end 
        else if (to_be_printed[7-DrawX[2:0]] == 1'b1 && invert == 1) begin
            Red = background_colour[11:8];
            Green = background_colour[7:4];
            Blue = background_colour[3:0];
        end    
        else if (to_be_printed[7-DrawX[2:0]] == 1'b0 && invert == 1) begin
            Red = foreground_colour[11:8];
            Green = foreground_colour[7:4];
            Blue = foreground_colour[3:0];
        end 
        else begin
            Red = 4'b1111;
            Blue = 4'b1111;
            Green = 4'b1111;
        end
    end 
    
endmodule

MODULE Fonts
    ! Definition of the standart size of the font
    CONST num letterWidthUpperCaseNormalFont  := 1;
    CONST num letterHeightUpperCaseNormalFont := 1;
    CONST num letterWidthLowerCaseNormalFont  := 1;
    CONST num letterHeightLowerCaseNormalFont := 1;

PROC draw( )
    
       TPWrite "Caracter a Imprimir: " + character;
       IF "Classic" = text_FontType THEN 
	        IF "A" = character OR "a" = character THEN
	            ! Instructions to draw letter "A"
	        ELSEIF "B" = character OR "b" = character THEN
	            ! Instructions to draw letter "B"
	        ELSEIF "C" = character OR "c" = character THEN
	            ! Instructions to draw letter "C"
	        ELSEIF "D" = character OR "d" = character THEN
	            ! Instructions to draw letter "D"
	        ELSEIF "E" = character OR "e" = character THEN
	            ! Instructions to draw letter "E"
	        ELSEIF "F" = character OR "f" = character THEN
	            ! Instructions to draw letter "F"
	        ELSEIF "G" = character OR "g" = character THEN
	            ! Instructions to draw letter "G"
	        ELSEIF "H" = character OR "h" = character THEN
	            ! Instructions to draw letter "H"
	        ELSEIF "I" = character OR "i" = character THEN
	            ! Instructions to draw letter "I"
	        ELSEIF "J" = character OR "j" = character THEN
	            ! Instructions to draw letter "J"
	        ELSEIF "K" = character OR "k" = character THEN
	            ! Instructions to draw letter "K"
	        ELSEIF "L" = character OR "l" = character THEN
	            ! Instructions to draw letter "L"
	        ELSEIF "M" = character OR "m" = character THEN
	            ! Instructions to draw letter "M"
	        ELSEIF "N" = character OR "n" = character THEN
	            ! Instructions to draw letter "N"
	        ELSEIF "O" = character OR "o" = character THEN
	            ! Instructions to draw letter "O"
	        ELSEIF "P" = character OR "p" = character THEN
	            ! Instructions to draw letter "P"
	        ELSEIF "Q" = character OR "q" = character THEN
	            ! Instructions to draw letter "Q"
	        ELSEIF "R" = character OR "r" = character THEN
	            ! Instructions to draw letter "R"
	        ELSEIF "S" = character OR "s" = character THEN
	            ! Instructions to draw letter "S"
	        ELSEIF "T" = character OR "t" = character THEN
	            ! Instructions to draw letter "T"
	        ELSEIF "U" = character OR "u" = character THEN
	            ! Instructions to draw letter "U"
	        ELSEIF "V" = character OR "v" = character THEN
	            ! Instructions to draw letter "V"
	        ELSEIF "W" = character OR "w" = character THEN
	            ! Instructions to draw letter "W"
	        ELSEIF "X" = character OR "x" = character THEN
	            ! Instructions to draw letter "X"
	        ELSEIF "Y" = character OR "y" = character THEN
	            ! Instructions to draw letter "Y"
	        ELSEIF "Z" = character OR "z" = character THEN
	            ! Instructions to draw letter "Z"
                
	        ELSEIF " " = character THEN
	            ! Instructions to draw letter " "
	        ELSE
	        ENDIF
	      ENDIF
    ENDPROC    
ENDMODULE

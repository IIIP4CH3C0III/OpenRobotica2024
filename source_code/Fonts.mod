MODULE Fonts
    ! Definition of the standart size of the font
    CONST num letterWidthUpperCaseNormalFont  := 1;
    CONST num letterHeightUpperCaseNormalFont := 1;
    CONST num letterWidthLowerCaseNormalFont  := 1;
    CONST num letterHeightLowerCaseNormalFont := 1;

    PROC draw()
        !For test
        TPWrite charPrint;
        
        IF "Classic" = text_FontType THEN 
           IF "A" = charPrint OR "a" = charPrint THEN
               ! Instructions to draw letter "A"
           ELSEIF "B" = charPrint OR "b" = charPrint THEN
               ! Instructions to draw letter "B"
           ELSEIF "C" = charPrint OR "c" = charPrint THEN
               ! Instructions to draw letter "C"
           ELSEIF "D" = charPrint OR "d" = charPrint THEN
               ! Instructions to draw letter "D"
           ELSEIF "E" = charPrint OR "e" = charPrint THEN
               ! Instructions to draw letter "E"
           ELSEIF "F" = charPrint OR "f" = charPrint THEN
               ! Instructions to draw letter "F"
           ELSEIF "G" = charPrint OR "g" = charPrint THEN
               ! Instructions to draw letter "G"
           ELSEIF "H" = charPrint OR "h" = charPrint THEN
               ! Instructions to draw letter "H"
           ELSEIF "I" = charPrint OR "i" = charPrint THEN
               ! Instructions to draw letter "I"
           ELSEIF "J" = charPrint OR "j" = charPrint THEN
               ! Instructions to draw letter "J"
           ELSEIF "K" = charPrint OR "k" = charPrint THEN
               ! Instructions to draw letter "K"
           ELSEIF "L" = charPrint OR "l" = charPrint THEN
               ! Instructions to draw letter "L"
           ELSEIF "M" = charPrint OR "m" = charPrint THEN
               ! Instructions to draw letter "M"
           ELSEIF "N" = charPrint OR "n" = charPrint THEN
               ! Instructions to draw letter "N"
           ELSEIF "O" = charPrint OR "o" = charPrint THEN
               ! Instructions to draw letter "O"
        ELSEIF "P" = charPrint OR "p" = charPrint THEN
               ! Instructions to draw letter "P"
           ELSEIF "Q" = charPrint OR "q" = charPrint THEN
               ! Instructions to draw letter "Q"
           ELSEIF "R" = charPrint OR "r" = charPrint THEN
               ! Instructions to draw letter "R"
           ELSEIF "S" = charPrint OR "s" = charPrint THEN
               ! Instructions to draw letter "S"
           ELSEIF "T" = charPrint OR "t" = charPrint THEN
               ! Instructions to draw letter "T"
           ELSEIF "U" = charPrint OR "u" = charPrint THEN
               ! Instructions to draw letter "U"
           ELSEIF "V" = charPrint OR "v" = charPrint THEN
               ! Instructions to draw letter "V"
           ELSEIF "W" = charPrint OR "w" = charPrint THEN
               ! Instructions to draw letter "W"
           ELSEIF "X" = charPrint OR "x" = charPrint THEN
               ! Instructions to draw letter "X"
           ELSEIF "Y" = charPrint OR "y" = charPrint THEN
               ! Instructions to draw letter "Y"
           ELSEIF "Z" = charPrint OR "z" = charPrint THEN
               ! Instructions to draw letter "Z"
           ELSEIF " " = charPrint THEN
               ! Instructions to draw letter " "
           ELSE
               ! Instructions for unrecognized charPrints
           ENDIF
       ENDIF
    ENDPROC    
ENDMODULE
MODULE Fonts

    ! Definition of the standart size of the font
    CONST num letterWidthUpperCaseNormalFont  := 1;
    CONST num letterHeightUpperCaseNormalFont := 1;
    CONST num letterWidthLowerCaseNormalFont  := 1;
    CONST num letterHeightLowerCaseNormalFont := 1;

    PROC draw( VAR char character, VAR num scalar, VAR string fontType )

      IF "Classic" = fontType THEN 
        IF 'A' = character OR 'a' = character THEN
            ! Instructions to draw letter 'A'
        ENDIF

        IF 'B' = character OR 'b' = character THEN
            ! Instructions to draw letter 'B'
        ENDIF

        IF 'C' = character OR 'c' = character THEN
            ! Instructions to draw letter 'C'
        ENDIF

        IF 'D' = character OR 'd' = character THEN
            ! Instructions to draw letter 'D'
        ENDIF

        IF 'E' = character OR 'e' = character THEN
            ! Instructions to draw letter 'E'
        ENDIF

        IF 'F' = character OR 'f' = character THEN
            ! Instructions to draw letter 'F'
        ENDIF

        IF 'G' = character OR 'g' = character THEN
            ! Instructions to draw letter 'G'
        ENDIF

        IF 'H' = character OR 'h' = character THEN
            ! Instructions to draw letter 'H'
        ENDIF

        IF 'I' = character OR 'i' = character THEN
            ! Instructions to draw letter 'I'
        ENDIF

        IF 'J' = character OR 'j' = character THEN
            ! Instructions to draw letter 'J'
        ENDIF

        IF 'K' = character OR 'k' = character THEN
            ! Instructions to draw letter 'K'
        ENDIF

        IF 'L' = character OR 'l' = character THEN
            ! Instructions to draw letter 'L'
        ENDIF

        IF 'M' = character OR 'm' = character THEN
            ! Instructions to draw letter 'M'
        ENDIF

        IF 'N' = character OR 'n' = character THEN
            ! Instructions to draw letter 'N'
        ENDIF

        IF 'O' = character OR 'o' = character THEN
            ! Instructions to draw letter 'O'
        ENDIF

        IF 'P' = character OR 'p' = character THEN
            ! Instructions to draw letter 'P'
        ENDIF

        IF 'Q' = character OR 'q' = character THEN
            ! Instructions to draw letter 'Q'
        ENDIF

        IF 'R' = character OR 'r' = character THEN
            ! Instructions to draw letter 'R'
        ENDIF

        IF 'S' = character OR 's' = character THEN
            ! Instructions to draw letter 'S'
        ENDIF

        IF 'T' = character OR 't' = character THEN
            ! Instructions to draw letter 'T'
        ENDIF

        IF 'U' = character OR 'u' = character THEN
            ! Instructions to draw letter 'U'
        ENDIF

        IF 'V' = character OR 'v' = character THEN
            ! Instructions to draw letter 'V'
        ENDIF

        IF 'W' = character OR 'w' = character THEN
            ! Instructions to draw letter 'W'
        ENDIF

        IF 'X' = character OR 'x' = character THEN
            ! Instructions to draw letter 'X'
        ENDIF

        IF 'Y' = character OR 'y' = character THEN
            ! Instructions to draw letter 'Y'
        ENDIF

        IF 'Z' = character OR 'z' = character THEN
            ! Instructions to draw letter 'Z'
        ENDIF            

        IF ' ' = character THEN
            ! Instructions to draw letter ' '
        ENDIF            
      ENDIF
    ENDPROC
ENDMODULE

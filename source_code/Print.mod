MODULE Print
    CONST num time := 5;

    PROC impressMecanism()
        TPErase;
        !TPWrite NumtoStr(coord_y_letter,0);
        TPWrite "A imprimir  ...";

		FOR i FROM 1 TO StrLen( userInputText ) DO
            character := StrPart( userInputText, i, 1);
            draw;

            !TPWrite NumToStr(coord_x_letter,0);
            !WaitTime(2);
            !Calculate new point center

            IF TRUE = automatic THEN
                coord_x_letter := coord_x_letter + letterWidthAutomated + text_SpaceLettersAutomated ;
            ELSE
                coord_x_letter := coord_x_letter + letter_width + text_SpaceLetters ; 
            ENDIF
		ENDFOR
        
        TPWrite "Impressão Feita";

        MoveJ Default_position, v100 , fine , pen\WObj:=Workobject_Paper ;
        WaitTime( time ); 
    ENDPROC
ENDMODULE

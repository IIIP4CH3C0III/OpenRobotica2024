MODULE Print
    
    PROC impress_mecanism()
        TPErase;
        !TPWrite NumtoStr(coord_y_letter,0);
        TPWrite "A imprimir  ...";

		FOR i FROM 1 TO StrLen( userInputText ) DO
            character := StrPart( userInputText, i, 1);
            draw;
            TPWrite NumToStr(coord_x_letter,0);
            WaitTime(2);
            !Calculate new point center
            IF automatic = TRUE THEN
                coord_x_letter := coord_x_letter + letter_lenght_aut + text_SpaceLetters_aut;
            ELSE
                !!
            ENDIF
		ENDFOR
       WaitTime(10); 
    ENDPROC
ENDMODULE
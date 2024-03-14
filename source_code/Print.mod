MODULE Print
    PROC impress_mecanism()
        TPErase;
        
        TPWrite "A imprimir  ...";

        VAR char charPrint
		FOR i FROM 0 TO StrLen( userInputText ) DO
            charPrint := StrPart( userInputText, i, 1);
            draw( charPrint );
		ENDFOR
    ENDPROC
ENDMODULE

MODULE Print    
    PROC impress_mecanism()
        TPErase;
        
        TPWrite "A imprimir  ...";

		FOR i FROM 1 TO StrLen( userInputText ) DO
            character := StrPart( userInputText, i, 1);
            draw;
		ENDFOR        
    ENDPROC
ENDMODULE

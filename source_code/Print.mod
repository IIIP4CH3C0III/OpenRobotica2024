MODULE Print
    
VAR string charPrint;
    
    PROC impress_mecanism()
        TPErase;
        
        TPWrite "A imprimir  ...";

		FOR i FROM 0 TO StrLen( userInputText ) DO
            charPrint := StrPart( userInputText, i, i);
            draw;
            
		ENDFOR
        
    ENDPROC
ENDMODULE
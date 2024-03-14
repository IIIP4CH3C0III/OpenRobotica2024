MODULE Print
    
VAR string char_print;
    
    PROC impress_mecanism()
        TPErase;
        
        !Inform Text in Impress
        TPWrite "A imprimir o texto : ";
        TPWrite char_impress;
        
         char_print := StrPart(char_impress, 1, 1);
        
    ENDPROC
ENDMODULE
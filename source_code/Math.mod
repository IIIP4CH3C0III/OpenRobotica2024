MODULE Math
    ! ============== Declara��o de Variaveis =======================
    
    ! Apoio para as perguntas
    VAR num answer_impress;
   
    !Write array
    PERS string char_impress;
    VAR num lenght_char_impress := 0;
    VAR num space_free;
    VAR num letter_lenght_aut;
        
    PROC write_string()
        TPWrite "Insira a(s) palavra(s) pretendida()s para imprimir.";
        userInputText := UIAlphaEntry(
            \Header:= "Impressão",
            \Message:= ""
            \Icon:=iconInfo
            \InitString:= "OPEN ROBOTICA");
    ENDPROC
    
    PROC calculo_size()
        !Tamanho da folha
        IF paper_orientation = "Horizontal" THEN 
            IF paper_size = "A3" THEN
               paper_Length := a3width;
               paper_Width  := a3lenght;
            ELSEIF paper_size = "A4" THEN
                paper_Length := a4width;
                paper_Width  := a4lenght;
            ELSEIF paper_size = "A5" THEN
                paper_Length := a5width;
                paper_Width  := a5lenght;
            ELSE
            ENDIF
            
        ELSE                                !Orienta��o Horizontal
            IF paper_size = "A3" THEN
               paper_Length := a3lenght;
               paper_Width  := a3width;
            ELSEIF paper_size = "A4" THEN
                paper_Length := a4lenght;
                paper_Width  := a4width;
            ELSEIF paper_size = "A5" THEN
                paper_Length := a5lenght;
                paper_Width  := a5width;
            ELSE
            ENDIF 
        ENDIF  
        
        !Calculo de caracteres
        lenght_char_impress := StrLen(char_impress);
        
        !Calculo estimado para cada letra
        space_free := paper_Length - paper_LeftMargin - paper_RightMargin;
        
        letter_lenght_aut := (space_free - ((lenght_char_impress - 1) * spacement_letters)) DIV lenght_char_impress;
        
    ENDPROC
    PROC impressmenu()
        write_string;
        calculo_size;
        settingsTextMenu;
        settingsPageMenu;
        write_string;
        impress_mecanism;
    ENDPROC
ENDMODULE

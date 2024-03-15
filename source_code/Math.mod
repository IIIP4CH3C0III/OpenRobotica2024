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
        TPWrite "Insira a(s) palavra(s) pretendida(s) para imprimir.";
        userInputText := UIAlphaEntry(
            \Header:= "Impress�o",
            \Message:= ""
            \Icon:=iconInfo
            \InitString:= "OPEN ROBOTICA");
    ENDPROC
    
    PROC calculo_size()
        !Calculo de caracteres
        lenght_char_impress := StrLen(char_impress);
        
        !Calculo estimado para cada letra
        space_free := paper_Length - paper_LeftMargin - paper_RightMargin;

        ! TODO text_SpaceLetters * CONST
        letter_lenght_aut := (space_free - ((lenght_char_impress - 1) * text_SpaceLetters)) DIV lenght_char_impress;
        
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

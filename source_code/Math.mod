MODULE Math
    ! ============== Declara??o de Variaveis =======================
    
    ! Apoio para as perguntas
    VAR num answer_impress;
   
    !Write array
    PERS string char_impress;
    VAR num lenght_char_impress := 0;
    VAR num space_free;
    VAR num letter_lenght_aut;
    VAR num letter_widht_aut;
    VAR num text_SpaceLetters_aut;
      
    PROC write_string()
        TPWrite "Insira a(s) palavra(s) pretendida(s) para imprimir.";
        userInputText := UIAlphaEntry(
            \Header:= "Impressão",
            \Message:= ""
            \Icon:=iconInfo
            \InitString:= "OPEN ROBOTICA");
    ENDPROC
    
    PROC calculo_size()
        !Calculo de caracteres
        lenght_char_impress := StrLen(userInputText);
        
        !Calculo estimado para cada letra
        space_free := paper_Length - paper_LeftMargin - paper_RightMargin;

        ! TODO text_SpaceLetters * CONST
        letter_lenght_aut := (space_free - ((lenght_char_impress - 1) * text_SpaceLetters)) DIV lenght_char_impress;
        
        !Redimensionar espaçamento
        text_SpaceLetters_aut := letter_lenght_aut DIV 10;
        IF text_SpaceLetters_aut = 0 THEN
            text_SpaceLetters_aut := 1;
        ENDIF 
        
        !Refazer
        letter_lenght_aut := (space_free - ((lenght_char_impress - 1) * text_SpaceLetters_aut)) DIV lenght_char_impress;
        letter_widht_aut := letter_lenght_aut * 2;
        
        IF letter_widht_aut > ( paper_Width - paper_TopMargin - paper_BottomMargin) THEN
            letter_widht_aut := paper_Width - paper_TopMargin - paper_BottomMargin;
        ENDIF
    ENDPROC
    
    PROC calculate_origin()
        x_available := paper_LeftMargin;
        
        IF y_available = 0 THEN
            y_available := paper_Width - paper_TopMargin; 
        ELSE
             y_available := coord_y_letter - text_SpaceParag;
             !Condition to out page
        ENDIF
        
        coord_x_letter := x_available;
        coord_y_letter := y_available - letter_widht_aut;

    ENDPROC
    
    PROC impressmenu()
        write_string;
        calculo_size;
        settingsTextMenu;
        settingsPageMenu;
        write_string;
        impress_mecanism;
    ENDPROC
    PROC tpWriteReportSettingsImpress()

    ENDPROC
ENDMODULE

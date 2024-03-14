MODULE Math
    ! ============== Declara��o de Variaveis =======================
    
    ! Apoio para as perguntas
    VAR num answer_impress;
   
    !Write array
    PERS string char_impress;
    VAR num lenght_char_impress := 0;
    VAR num space_free;
    VAR num letter_lenght_aut;
    
    !================ Menu de Impress�o ============================
    PROC printingPageMenu()
        
        !Frase a escrever
        write_string;
        
        WHILE answer_impress <> 5 AND answer_impress <> 4 DO
            !Calculate
            calculo_size;
            
            !Relatorio
            tpWriteReportSettingsImpress;
            
            TPWrite "Nr de letras : " + NumToStr(lenght_char_impress,0) + "  Frase a Escrever :";
            TPWrite char_impress ;
            
            !Escolha de Menu
            TPReadFK answer_impress, "Que passo quer efetuar?" , "Defini��es Texto", "Defini��o Papel", "Reescrever Frase", "IMPRIMIR", "Voltar";
            IF answer_impress = 1 THEN
                settingsTextMenu;
            ELSEIF answer_impress = 2 THEN
                settingsPageMenu ;
            ELSEIF answer_impress = 3 THEN
                write_string;
            ELSEIF answer_impress = 4 THEN
                impress_mecanism;
            ELSE
            ENDIF           
        ENDWHILE
        
        answer_impress := 0;
 
    ENDPROC
    
    PROC tpWriteReportSettingsImpress()
        TPWrite("Defini��es de p�gina:");
        ! Display paper size
        TPWrite "Folha Escolhida: " + paper_size ;

        ! Display paper orientation
        TPWrite "Or.Folha: " + paper_Orientation + " (" +  NumToStr(paper_Width,0) + " mm, " +  NumToStr(paper_Length,0) + " mm)";

        ! Display paper margins
        TPWrite "Margens da folha: " + NumToStr( paper_TopMargin, 0 ) + " (cabe�alho), " + NumToStr( paper_BottomMargin ,0 ) + " (rodap�), "+ NumToStr( paper_LeftMargin, 0 ) + " (esquerda), " + NumToStr( paper_RightMargin , 0 ) + " (direita)";

        ! Display text alignment
        TPWrite("Alinhamento do texto: " + paper_Alignment );
        
        !Display letter
        TPWrite("Defini��es de Texto:");
             
        ! Display letter size
        
        TPWrite "Tam.Letra(Man.): Comp.: " + NumToStr(letter_lenght,0) + " mm  Alt.: " +  NumToStr(letter_width,0) + " mm";
        
        TPWrite "Tam.Letra(Aut.): Comp.: " + NumToStr(letter_lenght_aut,0) + " mm  Alt.: " +  NumToStr(letter_width,0) + " mm";
        ! Display espa�amento
        TPWrite "Espa�amento entre letras: " + NumToStr(spacement_letters,0) + " mm";
        
        ! Display text alignment
        TPWrite("Tipo de Letra: " + font_type );
    ENDPROC
    
    PROC write_string()
        TPWrite "Insira a Frase pretendida para escrever";
        char_impress := UIAlphaEntry(
            \Header:= "Impress�o",
            \Message:= "Escreva qual � a mensagem a escrever?"
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
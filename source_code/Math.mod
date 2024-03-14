MODULE Math
    ! ============== Declaração de Variaveis =======================
    
    ! Apoio para as perguntas
    VAR num answer_impress;
   
    !Write array
    PERS string char_impress;
    
    !================ Menu de Impressão ============================
    PROC printingPageMenu()
        
        !Frase a escrever
        write_string;
        
        WHILE answer_impress <> 5 AND answer_impress <> 4 DO
            !Calculate
            calculo_size;
            !Relatorio
            
            tpWriteReportSettingsPageMenu;
            
            !Escolha de Menu
            TPReadFK answer_impress, "Que passo quer efetuar?" , "Definições Texto", "Definição Papel", "Reescrever Frase", "IMPRIMIR", "Voltar";
            IF answer_impress = 1 THEN
                settingsTextMenu;
            ELSEIF answer_impress = 2 THEN
                settingsPageMenu;
            ELSEIF answer_impress = 3 THEN
                write_string;
            ELSEIF answer_impress = 4 THEN
                impress_mecanism;
            ELSE
            ENDIF
            
            
        ENDWHILE
        
        answer_impress := 0;
 
    ENDPROC
    
    PROC write_string()
        TPWrite "Insira a Frase pretendida para escrever";
        char_impress := UIAlphaEntry(
            \Header:= "Impressão",
            \Message:= "Escreva qual é a mensagem a escrever?"
            \Icon:=iconInfo
            \InitString:= "OPEN ROBOTICA");
    ENDPROC
    
    PROC calculo_size()
        !Tamanho da folha
        IF paper_orientation = "Horizontal" THEN 
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
            
        ELSE                                !Orientação Horizontal
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
        ENDIF
        
        
        !Calculo de caracteres
        
    ENDPROC
ENDMODULE
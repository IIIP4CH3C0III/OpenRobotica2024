MODULE ImpressModule
    ! ============== Declaração de Variaveis =======================
    
    ! Apoio para as perguntas
    VAR num answer_impress;
    
    !Tamanho papel
    PERS num lenght_paper; !Comprimento Posição folha
    PERS num widht_paper;   
    
    !Write array
    PERS string char_impress;
    
    !================ Menu de Impressão ============================
    PROC impressmenu()
        
        !Frase a escrever
        write_string;
        
        WHILE answer_impress <> 5 AND answer_impress <> 4 DO
            !Calculate
            calculo_size;
            !Relatorio
            
            !Escolha de Menu
            TPReadFK answer_impress, "Que passo quer efetuar?" , "Definições Texto", "Definição Papel", "Reescrever Frase", "IMPRIMIR", "Voltar";
            IF answer_impress = 1 THEN
                menu_text;
            ELSEIF answer_impress = 2 THEN
                menu_paper;
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
        IF orientation = TRUE THEN  !Se True, orientação Vertical 
            IF paper_use = 3 THEN
               lenght_paper := a3_lenght;
               widht_paper  := a3_width;
            ELSEIF paper_use = 4 THEN
                lenght_paper := a4_lenght;
                widht_paper  := a4_width;
            ELSEIF paper_use = 5 THEN
                lenght_paper := a5_lenght;
                widht_paper  := a5_width;
            ELSE
            ENDIF
            
        ELSE                                !Orientação Horizontal
            IF paper_use = 3 THEN
               lenght_paper := a3_width;
               widht_paper  := a3_lenght;
            ELSEIF paper_use = 4 THEN
                lenght_paper := a4_width;
                widht_paper  := a4_lenght;
            ELSEIF paper_use = 5 THEN
                lenght_paper := a5_width;
                widht_paper  := a5_lenght;
            ELSE
            ENDIF  
        ENDIF
        
        !Calculo de caracteres
        
    ENDPROC
ENDMODULE
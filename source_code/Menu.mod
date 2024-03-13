MODULE Menu
    
    ! ============== Declara��o de Variaveis =======================
    
    ! Apoio para as perguntas
    VAR num answer_menu_inicial;
    VAR num answer_menu_paper;
    VAR num answer_trade_paper;
    
    ! Variaveis sobre impressao
    PERS bool automatic := FALSE; !Se True, � automatico
    
    ! Orientation
    PERS bool orientation := TRUE; !Se True, orienta��o Vertical 
    
    ! Paper
    PERS num paper_use := 4; ! 3 = A3  /   4 = A4   /  5 = A5
    
    !Dimension Paper (mm)
    CONST num a3_lenght := 297; 
    CONST num a3_width := 420;
    
    CONST num a4_lenght := 210; 
    CONST num a4_width := 297;
    
    CONST num a5_lenght := 148; 
    CONST num a5_width := 210;
    
    ! =============== program =======================================
    
    !Process for the inicialization program
    PROC start_default()
        
        TPWrite "As configura��es default foram efetuadas!";
        WaitTime(3);
    ENDPROC
    
    PROC principal_menu()
        TPErase; !Clear console
        
        !Imprimir Alguma coisa da consola
        TPWrite "Plotter & Open Rob�tica";
        
        !Perguntar o Menu que deseja fazer
        TPReadFK answer_menu_inicial, "Menu Principal" , "Defini��es Texto", "Defini��o Papel", "Imprimir uma Frase", stEmpty, stEmpty;
            !
            IF answer_menu_inicial = 1 THEN  
                menu_text;
                
            !                               
            ELSEIF answer_menu_inicial = 2 THEN                                                        
               menu_paper;
                
            !    
            ELSEIF answer_menu_inicial = 3 THEN
                impressmenu;
                
            !Nenhuma informa��o
            ELSE 
            ENDIF      
    ENDPROC
    
    PROC menu_text()
        TPErase;
        
        TPWrite ""; !Informa��o relevante
        
    ENDPROC
    
    PROC menu_paper()
        WHILE answer_menu_paper <> 5 DO
                
            TPErase;
            
            !Orienta��o da Folha
            IF orientation = TRUE THEN
               TPWrite "Orienta��o da folha = Vertical"; 
            ELSE
               TPWrite "Orienta��o da folha = Horizontal"; 
            ENDIF
            
            !Tamanho do Papel
            IF paper_use = 3 THEN
                TPWrite "Papel a ser usado = A3";
            ELSEIF paper_use = 4 THEN
                TPWrite "Papel a ser usado = A4";
            ELSEIF paper_use = 5 THEN
                TPWrite "Papel a ser usado = A5";
            ELSE
            ENDIF
            
            !Escolhas a ser efetuadas
            TPReadFK answer_menu_paper, "Se pretende mudar alguma configura��o, basta clicar no bot�o" , "Orienta��o", "Papel a usar", stEmpty, stEmpty, "Voltar";
            !Trocar Orienta��o
            IF answer_menu_paper = 1 THEN
                IF orientation = TRUE THEN
                    orientation := FALSE;
                ELSE
                    orientation := TRUE;
                ENDIF 
            
            !Trocar Tamanho 
            ELSEIF answer_menu_paper = 2 THEN
                TPReadFK answer_trade_paper, "Qual � o tamanho pretendido" , "A3", "A4", "A5", stEmpty, stEmpty;
                IF answer_trade_paper = 1 THEN
                    paper_use := 3;
                ELSEIF answer_trade_paper = 2 THEN
                    paper_use := 4;
                ELSEIF answer_trade_paper = 3 THEN
                    paper_use := 5;
                ELSE
                ENDIF
            !Outras op�oes
            ELSE
            ENDIF
         ENDWHILE
         
         answer_menu_paper := 0; !Evitar que na proxima entre
        
    ENDPROC
ENDMODULE
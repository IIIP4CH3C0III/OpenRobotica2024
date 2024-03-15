MODULE Menu
    
    ! ============== Definition of variables/constants =============================== !
    
    ! Questions suport
    VAR num answerInitMenu;
    VAR num answerPaperMenu;
    VAR num answerPaperMenu2;
    VAR num answerSettingMenu;
    VAR num answerWriteTextMenu;
    VAR num answerWriteTextMenu2;
    VAR num answerWrittingMenu;
    VAR num answerPrintingMenu;
    VAR num answerDebugMenu;

    ! Variable that stores the text input
    VAR string userInputText ; 
    VAR string character;

    ! Dimensions of the format papers (mm)
    CONST num a3Lenght := 297; 
    CONST num a3Width := 420;
    CONST num a4Lenght := 210; 
    CONST num a4Width := 297;
    CONST num a5Lenght := 148; 
    CONST num a5Width := 210;

    ! Initialize the paper characteristics
    VAR string paper_size := "A4";
    VAR string paper_orientation := "Horizontal";
    VAR string paper_alignment := "Esquerda";
    VAR num paper_TopMargin := 20;
    VAR num paper_BottomMargin := 20;
    VAR num paper_LeftMargin := 10;
    VAR num paper_RightMargin := 10;
    VAR num paper_Width := a4Width;
    VAR num paper_Length := a4Lenght; 
    
    ! Initialize the text characteristics
    VAR string text_FontType := "Classic";
    VAR num text_SizePT := 12;
    VAR string text_Color := "Black";
    VAR num text_Rotation := 0;
    VAR num text_SpaceLetters := 2;
    VAR num text_SpaceParag := 5;

    ! Initialize letters characteristics
    VAR num letter_lenght := 5;
    VAR num letter_width := 10;
    
    ! ==================== Code - default ========================= !

    ! Process for the inicialization program
    PROC startDefault( ) 
        ! Clear console
        TPErase;         

        ! JumpHome; !TODO
        TPWrite "O robot está pronto a ser operado.";
 
        WaitTime(1);
    ENDPROC

    ! ==================== Code - mainMenu ======================== !
    
    PROC mainMenu()
        !Clear console
        TPErase; 
        
        ! Welcome page.
        TPWrite "Plotter & Open Robótica";
        
        ! Options of the menu
        TPReadFK answerInitMenu , 
                 stEmpty , 
                 "Escrever Manualmente" , 
                 "Definições texto" , 
                 "Definições folha" ,  
                 "Imprimir",  
                 "Debug";                                                                                            
                 
        IF 1 = answerInitMenu THEN  
            writeTextMenu;                      
        ELSEIF 2 = answerInitMenu THEN
           answersettingMenu := 0;
           settingsTextMenu ;    
        ELSEIF 3 = answerInitMenu THEN
            settingsPageMenu ;
        ELSEIF 4 = answerInitMenu THEN
            printingPageMenu ;                 
        ELSEIF 5 = answerInitMenu THEN
            debugMenu ;
        ENDIF      
    ENDPROC

    ! ==================== Code - writeMenu ======================= !
    
    PROC writeTextMenu( )
        WHILE answerWrittingMenu <> 5 DO
            ! Clear the console
            TPErase;

            TPWrite("Frase a escrever:");
            ! Options to change settings of the page
            TPReadFK answerSettingMenu, 
                     userInputText , 
                     "Escrever", 
                     stEmpty, 
                     stEmpty, 
                     stEmpty, 
                     "Voltar";
            
            IF 1 = answersettingMenu THEN  
                write_string;
                                
            ELSEIF 2 = answersettingMenu THEN                                                        

            ELSEIF 3 = answersettingMenu THEN
                
            ELSEIF 4 = answersettingMenu THEN

            ELSEIF 5 = answersettingMenu THEN 
                answerWrittingMenu := 5;
                ! Back to menu
            ENDIF
        ENDWHILE
        answerWrittingMenu := 0;        
    ENDPROC

    ! ==================== Code - settingsText ==================== !

    PROC settingsTextMenu( )
        WHILE answersettingMenu <> 5 DO
            ! Clear the console
            TPErase;

            tpWriteReportSettingsTextMenu;
            
            ! Options to change settings of the page
            TPReadFK answerSettingMenu, 
                     stEmpty , 
                     "Fonte", 
                     "Tamanho (pt)", 
                     "Cor", 
                     "Página seguinte", 
                     "Voltar";
            
            IF 1 = answersettingMenu THEN  
                fontTypePageMenu ;
                                
            ELSEIF 2 = answersettingMenu THEN                                                        
                TPReadNum text_SizePT, "Qual é o tamanho da letra? (pt) (default = 12)";
                
            ELSEIF 3 = answersettingMenu THEN
                fontColorPageMenu ;
                
            ELSEIF 4 = answersettingMenu THEN
                answersettingMenu := 0;
                settingsTextMenu2 ;

            ELSEIF 5 = answersettingMenu THEN 
                answersettingMenu := 5;
                ! Back to menu
            ENDIF
                     
        ENDWHILE   
    ENDPROC

    PROC settingsTextMenu2( )
        WHILE answersettingMenu <> 5 DO
            ! Clear the console
            TPErase;

            tpWriteReportSettingsTextMenu;
            
            ! Options to change settings of the page
            TPReadFK answerSettingMenu, 
                     stEmpty , 
                     "Rotação", 
                     "Espaçamento entre letras", 
                     "Espaçamento entre paragráfos", 
                     "Página seguinte", 
                     "Voltar";
            
            IF 1 = answersettingMenu THEN  
                TPReadNum text_Rotation, "Qual é a rotação pretendida? (graus)";
                                
            ELSEIF 2 = answersettingMenu THEN                                                        
                TPReadNum text_SpaceLetters, "Qual é o espaçamento entre letras? (mm) (default = 2)";
                
            ELSEIF 3 = answersettingMenu THEN
                TPReadNum text_SpaceParag, "Qual é o espaçamento entre paragráfos? (mm) (default = 5)";
                
            ELSEIF 4 = answersettingMenu THEN
                answersettingMenu := 0;
                settingsTextMenu3 ;

            ELSEIF 5 = answersettingMenu THEN 
                answersettingMenu := 5;
                ! Back to menu
            ENDIF
        ENDWHILE   
    ENDPROC

    PROC settingsTextMenu3( )
        WHILE answersettingMenu <> 5 DO
            ! Clear the console
            TPErase;

            tpWriteReportSettingsTextMenu;
            
            ! Options to change settings of the page
            TPReadFK answerSettingMenu, 
                     stEmpty , 
                     "Negrito", 
                     "Itálico", 
                     "Sublinhado", 
                     "Página seguinte", 
                     "Voltar";
            
            IF 1 = answersettingMenu THEN  
                 ! Do nothing yet                    

            ELSEIF 2 = answersettingMenu THEN                                                        
                 ! Do nothing yet                                    

            ELSEIF 3 = answersettingMenu THEN
                 ! Do nothing yet                                    

            ELSEIF 4 = answersettingMenu THEN
                answersettingMenu := 0;
                settingsTextMenu ;
            ELSEIF 5 = answersettingMenu THEN 
                answersettingMenu := 5;
                ! Back to menu
            ENDIF
        ENDWHILE   
    ENDPROC
 
    
    PROC tpWriteReportSettingsTextMenu()
        ! Clear the console
        TPErase;
       
        TPWrite("Definições de Texto:");
                      
        ! Display font type
        TPWrite("Fonte de Letra: " + text_FontType ); 

        ! Display letter size
        TPWrite "Tamanho de letra:" + NumToStr(text_SizePT,0) + "pt" + "(" + NumToStr(letter_lenght,0) + " mm , " +  NumToStr(letter_width,0) + " mm )";

        ! Display letter color
        TPWrite "Cor de Letra: " + text_Color;
                
        ! Display letter rotation
        TPWrite "Rotação do texto: " + NumToStr( text_Rotation, 0 ) + " graus";

        ! Display space between letters
        TPWrite "Espaço entre letras: " + NumToStr( text_SpaceLetters, 0 ) + " mm";

        ! Display space between paragraphs
        TPWrite "Espaço entre parágrafos: " + NumToStr( text_SpaceParag, 0 ) + " mm";
    ENDPROC

    PROC fontTypePageMenu( )
        ! Clear the console
        TPErase;

        tpWriteReportSettingsTextMenu;

        ! Options to change format
        TPReadFK answerWriteTextMenu2, 
                 stEmpty , 
                 "Classic" , 
                 "Digital" , 
                 "Fancy" , 
                 stEmpty , 
                 "Voltar" ;

        IF 1 = answerWriteTextMenu2 THEN  
            text_FontType := "Classic";
            
        ELSEIF 2 = answerWriteTextMenu2 THEN                                                        
            text_FontType := "Digital";
            
        ELSEIF 3 = answerWriteTextMenu2 THEN
            text_FontType := "Fancy";
        
        ELSEIF 4 = answerWriteTextMenu2 THEN
            ! nothing for now (fuction enable)
            
        ELSEIF 5 = answerWriteTextMenu2 THEN
            answerWriteTextMenu2 := 0 ;
        ENDIF                             
    ENDPROC

    PROC fontColorPageMenu( )
        ! Clear the console
        TPErase;

        tpWriteReportSettingsTextMenu;

        ! Options to change format
        TPReadFK answerWriteTextMenu2, 
                 stEmpty , 
                 "Black" , 
                 "Blue" , 
                 "Red" , 
                 stEmpty , 
                 "Voltar" ;

        IF 1 = answerWriteTextMenu2 THEN  
            text_Color := "Black";
            
        ELSEIF 2 = answerWriteTextMenu2 THEN                                                        
            text_Color := "Blue";
            
        ELSEIF 3 = answerWriteTextMenu2 THEN
            text_Color := "Red";
        
        ELSEIF 4 = answerWriteTextMenu2 THEN
            ! nothing for now (fuction enable)
            
        ELSEIF 5 = answerWriteTextMenu2 THEN
            answerWriteTextMenu2 := 0 ;
        ENDIF                             
    ENDPROC


    ! ==================== Code - settingsPage ==================== !
    
    PROC settingsPageMenu( )
        WHILE 5 <> answerPaperMenu DO
            ! Clear the console
            TPErase;

            tpWriteReportSettingsPageMenu;
                                    
            ! Options to change settings of the page
            TPReadFK answerPaperMenu, 
                     stEmpty , 
                     "Formato", 
                     "Orientação", 
                     "Margens", 
                     "Alinhamento", 
                     "Voltar";

            IF 1 = answerPaperMenu THEN  
                formatPageMenu ;
                
            ELSEIF 2 = answerPaperMenu THEN                                                        
                orientationPageMenu;   
                
            ELSEIF 3 = answerPaperMenu THEN
                marginsPageMenu ;
                
            ELSEIF 4 = answerPaperMenu THEN
                alignmentPageMenu ;                 

            ELSEIF 5 = answerPaperMenu THEN !Go out in the while
            ENDIF                             
        ENDWHILE
        
        answerPaperMenu := 0;
    ENDPROC

    PROC tpWriteReportSettingsPageMenu()
        TPWrite("Definições de página:");

        ! Display paper size
        TPWrite "Formato da folha: " + paper_size + " ( " +  NumToStr(paper_Width,0) + " mm, " +  NumToStr(paper_Length,0) + " mm)";

        ! Display paper orientation
        TPWrite "Orientação da folha: " + paper_Orientation;

        ! Display paper margins
        TPWrite "Margens da folha: ";
        TPWrite " " + NumToStr( paper_TopMargin, 0 ) + " (mm) (cabeçalho)," + NumToStr( paper_BottomMargin ,0 ) + " (mm) (rodapé)," ;
        TPWrite " " + NumToStr( paper_LeftMargin, 0 ) + " (mm) (esquerda)," + NumToStr( paper_RightMargin , 0 ) + " (mm) (direita)" ;

        ! Display text alignment
        TPWrite("Alinhamento do texto: " + paper_Alignment );
    ENDPROC

    PROC formatPageMenu( )
        ! Clear the console
        TPErase;

        tpWriteReportSettingsPageMenu;

        ! Options to change format
        TPReadFK answerPaperMenu2, 
                 stEmpty , 
                 "A3" , 
                 "A4" , 
                 "A5" , 
                 stEmpty , 
                 "Voltar" ;

        IF 1 = answerPaperMenu2 THEN  
            paper_size := "A3" ;
            paper_Width := a3Width;
            paper_Length := a3Lenght;
        
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            paper_size := "A4" ;
            paper_Width := a4Width;
            paper_Length := a4Lenght; 
            
        ELSEIF 3 = answerPaperMenu2 THEN
            paper_size := "A5" ;
            paper_Width := a5Width;
            paper_Length := a5Lenght;
        
        ELSEIF 4 = answerPaperMenu2 THEN
            ! nothing for now (fuction enable)
            
        ELSEIF 5 = answerPaperMenu2 THEN
            answerPaperMenu2 := 0 ;
        ENDIF                             
    ENDPROC

    PROC orientationPageMenu( )
        ! Clear the console
        TPErase;

        tpWriteReportSettingsPageMenu;

        ! Options to change orientation
        TPReadFK answerPaperMenu2, 
                 stEmpty , 
                 "Horizontal" , 
                 "Vertical" , 
                 stEmpty , 
                 stEmpty , 
                 "Voltar" ;

        IF 1 = answerPaperMenu2 THEN  
            paper_Orientation := "Horizontal";
            
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            paper_Orientation := "Vertical";
            
        ELSEIF 3 = answerPaperMenu2 THEN
            ! nothing for now
            
        ELSEIF 4 = answerPaperMenu2 THEN
            ! nothing for now
            
        ELSEIF 5 = answerPaperMenu2 THEN
            answerPaperMenu2 := 0 ;
        ENDIF                             
    ENDPROC

    PROC marginsPageMenu( )
        ! Clear the console
        TPErase;

        tpWriteReportSettingsPageMenu;

        ! Options to change orientation
        TPReadFK answerPaperMenu2, 
                 stEmpty , 
                 "Cabeçalho" , 
                 "Rodapé" , 
                 "Direita" , 
                 "Esquerda" , 
                 "Voltar" ;

        ! TODO does nothing at the moment 
        
        IF 1 = answerPaperMenu2 THEN  
            TPReadNum paper_TopMargin, "Qual é o valor da margem do cabeçalho? (mm)";
            
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            TPReadNum paper_BottomMargin, "Qual é o valor da margem do rodapé? (mm)";
            
        ELSEIF 3 = answerPaperMenu2 THEN
            TPReadNum paper_RightMargin, "Qual é o valor da margem direita? (mm)";
            
        ELSEIF 4 = answerPaperMenu2 THEN
            TPReadNum paper_LeftMargin, "Qual é o valor da margem esquerda? (mm)";
            
        ELSEIF 5 = answerPaperMenu2 THEN
            answerPaperMenu2 := 0 ;
        ENDIF                             
    ENDPROC

    PROC alignmentPageMenu( )
        ! Clear the console
        TPErase;

        tpWriteReportSettingsPageMenu;

        ! Options to change orientation
        TPReadFK answerPaperMenu2, 
                 stEmpty , 
                 "Centro" , 
                 "Esquerda" , 
                 "Direita" , 
                 "Justificado" , 
                 "Voltar" ;

        IF 1 = answerPaperMenu2 THEN  
            paper_Alignment := "Centro";
            
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            paper_Alignment := "Esquerda";
            
        ELSEIF 3 = answerPaperMenu2 THEN
            paper_Alignment := "Direita";
           
        ELSEIF 4 = answerPaperMenu2 THEN
            paper_Alignment := "Justificado";
            
        ELSEIF 5 = answerPaperMenu2 THEN
            answerPaperMenu2 := 0 ;
        ENDIF                             
    ENDPROC


    !===================== Code - ImpressMenu ============================

    PROC printingPageMenu()        
         VAR bool x := FALSE;
         WHILE answerPrintingMenu <> 5 DO
            ! Clear the console
            TPErase;

            IF TRUE = x THEN
    	        tpWriteReportSettingsTextMenu;
    	        x := FALSE;
            ELSE
	            tpWriteReportSettingsPageMenu;
    	        x := TRUE;
            ENDIF
        
            ! Options to change settings of the page
            TPReadFK answerPrintingMenu, 
                     stEmpty , 
                     "Automático", 
                     "Manual", 
                     "Ficheiro", 
                     "Scroll", 
                     "Voltar";
            
            IF 1 = answerPrintingMenu THEN  
                !automaticPrinting;
                                
            ELSEIF 2 = answerPrintingMenu THEN                                                        
                !manualPriting;
            ELSEIF 3 = answerPrintingMenu THEN
                !filesPriting;
            ELSEIF 4 = answerPrintingMenu THEN

            ELSEIF 5 = answerPrintingMenu THEN 
                answerPrintingMenu := 5;
                ! Back to menu
            ENDIF
        ENDWHILE        
        answerPrintingMenu := 0;
    ENDPROC
    
    ! ==================== Code - debugMenu ==================== !

    PROC debugMenu( )
        ! Clear the console
        TPErase;
    
        !TPRead   
    ENDPROC
    
    
ENDMODULE

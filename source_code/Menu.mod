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
    VAR string paper_orientation := "Vertical";
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
    
    VAR num paragraph_write := 0;
        
    VAR bool automatic := FALSE;
    
    VAR num altura_letras;
    VAR num comprimento_letras;

    VAR bool error := FALSE;
    
    ! ==================== Code - default ========================= !

    ! Process for the inicialization program
    PROC startDefault( ) 
        ! Clear console
        TPErase;         

        MoveJ Default_position,v1000,fine,pen\WObj:=Workobject_Paper;
        
        ! JumpHome; !TODO
        TPWrite "O robot est� pronto a ser operado.";
 
        WaitTime(1);
    ENDPROC

    ! ==================== Code - mainMenu ======================== !
    
    PROC mainMenu()
        !Clear console
        TPErase; 
        
        ! Welcome page.
        TPWrite "Plotter & Open Rob�tica";
        
        ! Options of the menu
        TPReadFK answerInitMenu , 
                 stEmpty , 
                 "Escrever Manualmente" , 
                 "Defini��es texto" , 
                 "Defini��es folha" ,  
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
                     "P�gina seguinte", 
                     "Voltar";
            
            IF 1 = answersettingMenu THEN  
                fontTypePageMenu ;
                                
            ELSEIF 2 = answersettingMenu THEN                                                        
                TPReadNum text_SizePT, "Qual � o tamanho da letra? (pt) (default = 12)";
                !TODO convert pt to mm
                
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
                     "Rota��o", 
                     "Espa�amento entre letras", 
                     "Espa�amento entre paragr�fos", 
                     "P�gina seguinte", 
                     "Voltar";
            
            IF 1 = answersettingMenu THEN  
                TPReadNum text_Rotation, "Qual � a rota��o pretendida? (graus)";
                                
            ELSEIF 2 = answersettingMenu THEN                                                        
                TPReadNum text_SpaceLetters, "Qual � o espa�amento entre letras? (mm) (default = 2)";
                
            ELSEIF 3 = answersettingMenu THEN
                TPReadNum text_SpaceParag, "Qual � o espa�amento entre paragr�fos? (mm) (default = 5)";
                
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
                     "It�lico", 
                     "Sublinhado", 
                     "P�gina seguinte", 
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
       
        TPWrite("Defini��es de Texto:");
                      
        ! Display font type
        TPWrite("Fonte de Letra: " + text_FontType ); 

        ! Display letter size
        TPWrite "Tamanho de letra:" + NumToStr(text_SizePT,0) + "pt" + "(" + NumToStr(letter_lenght,0) + " mm , " +  NumToStr(letter_width,0) + " mm )";

        ! Display letter color
        TPWrite "Cor de Letra: " + text_Color;
                
        ! Display letter rotation
        TPWrite "Rota��o do texto: " + NumToStr( text_Rotation, 0 ) + " graus";

        ! Display space between letters
        TPWrite "Espa�o entre letras: " + NumToStr( text_SpaceLetters, 0 ) + " mm";

        ! Display space between paragraphs
        TPWrite "Espa�o entre par�grafos: " + NumToStr( text_SpaceParag, 0 ) + " mm";
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
                     "Orienta��o", 
                     "Margens", 
                     "Alinhamento", 
                     "Voltar";

            IF 1 = answerPaperMenu THEN  
                formatPageMenu ;
                y_available := 0;
                
            ELSEIF 2 = answerPaperMenu THEN                                                        
                orientationPageMenu;
                y_available := 0;
                
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
        TPWrite("Defini��es de p�gina:");

        ! Display paper size
        TPWrite "Formato da folha: " + paper_size + " ( " +  NumToStr(paper_Width,0) + " mm, " +  NumToStr(paper_Length,0) + " mm)";

        ! Display paper orientation
        TPWrite "Orienta��o da folha: " + paper_Orientation;

        ! Display paper margins
        TPWrite "Margens da folha: ";
        TPWrite " " + NumToStr( paper_TopMargin, 0 ) + " (mm) (cabe�alho)," + NumToStr( paper_BottomMargin ,0 ) + " (mm) (rodap�)," ;
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

            IF "Vertical" = paper_orientation THEN
                 paper_Width := a3Lenght;
                 paper_Length := a3Width;
            ELSE
                 paper_Width := a3Width;
                 paper_Length := a3Lenght;
            ENDIF
        
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            paper_size := "A4" ;

            IF "Vertical" = paper_orientation THEN
                 paper_Width := a4Lenght;
                 paper_Length := a4Width;
            ELSE
                 paper_Width := a4Width;
                 paper_Length := a4Lenght;
            ENDIF
            
        ELSEIF 3 = answerPaperMenu2 THEN
            paper_size := "A5" ;

            IF "Vertical" = paper_orientation THEN
                 paper_Width := a5Lenght;
                 paper_Length := a5Width;
            ELSE
                 paper_Width := a5Width;
                 paper_Length := a5Lenght;
            ENDIF
        
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
                 "Cabe�alho" , 
                 "Rodap�" , 
                 "Direita" , 
                 "Esquerda" , 
                 "Voltar" ;

        ! TODO does nothing at the moment 
        
        IF 1 = answerPaperMenu2 THEN  
            TPReadNum paper_TopMargin, "Qual � o valor da margem do cabe�alho? (mm)";
            
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            TPReadNum paper_BottomMargin, "Qual � o valor da margem do rodap�? (mm)";
            
        ELSEIF 3 = answerPaperMenu2 THEN
            TPReadNum paper_RightMargin, "Qual � o valor da margem direita? (mm)";
            
        ELSEIF 4 = answerPaperMenu2 THEN
            TPReadNum paper_LeftMargin, "Qual � o valor da margem esquerda? (mm)";
            
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
         VAR num x := 1;
        WHILE answerPrintingMenu = 4 OR answerPrintingMenu = 0 DO
           ! Clear the console
           TPErase;

           IF 1 = x THEN
                TPWrite "Texto a ser impresso";
                TPWrite userInputText;
    	        x := 2;
            ELSEIF 2 = X THEN
	            tpWriteReportSettingsTextMenu;
    	        x := 3;
            ELSE
                tpWriteReportSettingsPageMenu;
    	        x := 1;
            ENDIF
        
            ! Options to change settings of the page
            TPReadFK answerPrintingMenu, 
                     stEmpty , 
                     "Autom�tico", 
                     "Manual", 
                     "Ficheiro", 
                     "Scroll", 
                     "Voltar";
            
            IF 1 = answerPrintingMenu THEN  
                automaticPrinting;
                                
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
    
    
    PROC automaticPrinting()
        automatic := TRUE;
        error := calculateSizeLetterAutomated;        
        error := calculate_origin;

        IF TRUE = error THEN
            RETURN 0;
        ENDIF 
        
        altura_letras := letterLenghtAutomated ;
        comprimento_letras := letterWidthAutomated ;
        
        impressMecanism;        
        automatic := FALSE;
    ENDPROC
    
    ! ==================== Code - debugMenu ==================== !

    PROC debugMenu( )
        ! Clear the console
        TPErase;
    
        !TPRead   
    ENDPROC    
ENDMODULE

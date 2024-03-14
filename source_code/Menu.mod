MODULE Menu
    
    ! ============== Definition of variables/constants =============================== !
    
    ! Questions suport
    VAR num answerInitMenu;
    VAR num answerPaperMenu;
    VAR num answerPaperMenu2;
    VAR num answersettingMenu;
    VAR num answerwritetextMenu;
    VAR num answerprintingMenu;
    VAR num answerdebugMenu;

    ! Variable that stores the text input
    VAR string userInputText ; 

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
    VAR num spacement_letters := 2;
    VAR num letter_lenght := 5;
    VAR num letter_width := 10;
    VAR string font_type := "Normal";
    
    VAR string userInput;

    
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
        TPReadFK answerInitMenu ,"Plotter & Open Robótica" , "Escrever Manualmente" , "Definições texto" , "Definições folha" ,  "Imprimir",  "Debug";                                                                                            
! Where is stored the option  ! What it writes on the screen    ! Option 1               ! Option 2        ! Option 3           ! Option 4      ! Option 5 
                 
            IF 1 = answerInitMenu THEN  
                writeTextMenu;                      
            ELSEIF 2 = answerInitMenu THEN                                                        
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
        answerwritetextMenu := 1;
        WHILE answerwritetextMenu <> 0 DO
            ! Clear the console
            TPErase;
            TPWrite "Inable Function";
            WaitTime(2);
            answerwritetextMenu := 0;
        ENDWHILE        
    ENDPROC

    ! ==================== Code - settingsText ==================== !

    PROC settingsTextMenu( )
        
        WHILE answersettingMenu <> 5 DO
            ! Clear the console
            TPErase;
            tpWriteReportSettingsTextMenu;
            
            ! Options to change settings of the page
            TPReadFK answersettingMenu, 
                     stEmpty , 
                     "Largura da Letra", 
                     "Altura da Letra", 
                     "Espaçamento entre Letras", 
                     "Tipo de Letra", 
                     "Voltar";
            
            IF 1 = answersettingMenu THEN  
                TPReadNum letter_lenght, "Qual é o comprimento da letra (mm)?";
                
            ELSEIF 2 = answersettingMenu THEN                                                        
                TPReadNum letter_width, "Qual é a altura da letra (mm)?";  
                
            ELSEIF 3 = answersettingMenu THEN
                TPReadNum spacement_letters, "Qual é o espaçamento entre letras (mm)?";
                
            ELSEIF 4 = answersettingMenu THEN
                !alignmentPageMenu ;                 

            ELSEIF 5 = answersettingMenu THEN !Go out in the while
            ENDIF
                     
        ENDWHILE   
        answersettingMenu := 0;
    ENDPROC
    
    PROC tpWriteReportSettingsTextMenu()
        TPWrite("Definições de Texto:");
             
        ! Display letter size
        
        TPWrite "Tamanho da letra: Comprimento " + NumToStr(letter_lenght,0) + " mm      Altura : " +  NumToStr(letter_width,0) + " mm";

        ! Display espaçamento
        TPWrite "Espaçamento entre letras: " + NumToStr(spacement_letters,0) + " mm";
        
        ! Display text alignment
        TPWrite("Tipo de Letra: " + font_type ); 
        
        ! Display paper margins
        !TPWrite "Margens da folha: " + NumToStr( paper_TopMargin, 0 ) + " (cabeçalho), " + NumToStr( paper_BottomMargin ,0 ) + " (rodapé), "+ NumToStr( paper_LeftMargin, 0 ) + " (esquerda), " + NumToStr( paper_RightMargin , 0 ) + " (direita)";

           
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
        TPWrite "Margens da folha: " + NumToStr( paper_TopMargin, 0 ) + " (cabeçalho), " + NumToStr( paper_BottomMargin ,0 ) + " (rodapé), "+ NumToStr( paper_LeftMargin, 0 ) + " (esquerda), " + NumToStr( paper_RightMargin , 0 ) + " (direita)";

        ! Display text alignment
        TPWrite("Alinhamento do texto: " + paper_Alignment );
    ENDPROC

    PROC formatPageMenu( )
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
        ! Options to change orientation
        TPReadFK answerPaperMenu2, 
                 stEmpty , 
                 "Cabeçalho" , 
                 "Rodapé" , 
                 "Esquerda" , 
                 "Direita" , 
                 "Voltar" ;

        ! TODO does nothing at the moment 
        
        IF 1 = answerPaperMenu2 THEN  
            !paper_TopMargin := 20;
            TPReadNum paper_TopMargin, "Qual é a nova margem topo (mm)?";
            
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            
            TPReadNum paper_BottomMargin, "Qual é a nova margem debaixo (mm)?";
            
        ELSEIF 3 = answerPaperMenu2 THEN
            
            TPReadNum paper_RightMargin, "Qual é a nova margem direita? (mm)";
            
        ELSEIF 4 = answerPaperMenu2 THEN
            !paper_RightMargin := 10;
            TPReadNum paper_LeftMargin, "Qual é a nova margem esquerda? (mm)";
            
        ELSEIF 5 = answerPaperMenu2 THEN
            answerPaperMenu2 := 0 ;
        ENDIF                             
    ENDPROC

    PROC alignmentPageMenu( )
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

    

    ! ==================== Code - debugMenu ==================== !

    PROC debugMenu( )
        answerdebugMenu := 1;
        WHILE 0 <> answerdebugMenu DO
            ! Clear the console
            TPErase;
            TPWrite "Inable Function";
            WaitTime(2);
            answerdebugMenu := 0;
        ENDWHILE        
    ENDPROC
    
    
ENDMODULE
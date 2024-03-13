MODULE Menu
    
    ! ============== Definition of variables/constants =============================== !
    
    ! Questions suport
    VAR num answerInitMenu;
    VAR num answerPaperMenu;
    VAR num answerPaperMenu2;

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
        TPWrite "Plotter & Open Rob�tica";
        
        ! Options of the menu
        TPReadFK answerInitMenu ,"Plotter & Open Robótica" , "Escrever Manualmente" , "Definições texto" , "Definições folha" ,  "Imprimir",  "Debug";                                                                                            
                 
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
        WHILE 0 <> answerPaperMenu DO
            ! Clear the console
            TPErase;

        ENDWHILE        
    ENDPROC

    ! ==================== Code - settingsText ==================== !

    PROC settingsTextMenu( )
        WHILE 0 <> answerPaperMenu DO
            ! Clear the console
            TPErase;

        ENDWHILE        
    ENDPROC

    ! ==================== Code - settingsPage ==================== !
    PROC settingsPageMenu( )
        WHILE 0 <> answerPaperMenu DO
            ! Clear the console
            TPErase;

            tpWriteReportSettingsPageMenu ;
                                    
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

            ELSEIF 5 = answerPaperMenu THEN
                answerPaperMenu := 0 ;
            ENDIF                             
        ENDWHILE        
    ENDPROC

    PROC tpWriteReportSettingsPageMenu( )
        TPWrite("Definições de página:");

        ! Display paper size
        TPWrite "Formato da folha: " + paper_size + " (" +  NumToStr(paper_Width,3) + " mm, " +  NumToStr(paper_Length,3) + " mm)";

        ! Display paper orientation
        TPWrite "Orientação da folha: " + paper_Orientation;

        ! Display paper margins
        TPWrite "Margens da folha: " + NumToStr( paper_TopMargin, 3 ) + " (cabe�alho), " + NumToStr( paper_BottomMargin ,3 ) + " (rodap�), " + NumToStr( paper_LeftMargin, 3 ) + " (esquerda), " + NumToStr( paper_RightMargin ,3 ) + " (direita)";

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
                 "Outro" , 
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
            ! nothing for now
            
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
            paper_TopMargin := 20;
            
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            paper_BottomMargin := 20;
            
        ELSEIF 3 = answerPaperMenu2 THEN
            paper_LeftMargin := 10;
            
        ELSEIF 4 = answerPaperMenu2 THEN
            paper_RightMargin := 10;
            
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

    ! ==================== Code - printingMenu ==================== !

    PROC printingPageMenu( )
        WHILE 0 <> answerPaperMenu DO
            ! Clear the console
            TPErase;

        ENDWHILE        
    ENDPROC


    ! ==================== Code - debugMenu ==================== !

    PROC debugMenu( )
        WHILE 0 <> answerPaperMenu DO
            ! Clear the console
            TPErase;

            ! Conversion of Pt in milimeeters
            ! fontSizeMM = fontSizePT * 0.352778; 

            ! Draw a random letter
            draw( 'A' , 1 , "Classic" );
        ENDWHILE        
    ENDPROC
    
    
ENDMODULE

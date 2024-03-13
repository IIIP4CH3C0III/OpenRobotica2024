MODULE Menu    
    ! ====================== Definition of variables/constants =============================== !
    
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

    ! Define the structure for paper characteristics
    STRUCT PaperCharacteristics
        string Size := "A4";
        string Orientation := "Horizontal";
        string Alignment := "Left";
        num TopMargin := 20;
        num BottomMargin := 20;
        num LeftMargin := 10;
        num RightMargin := 10;
        num Width := a4Width;
        num Length := a4Length;
    ENDSTRUCT

    ! Declare a variable of type PaperCharacteristics
    VAR PaperCharacteristics paper;

    ! Initialize the paper characteristics
    paper.Size := "A4";
    paper.Orientation := "Horizontal";
    paper.Alignment := "Esquerda";
    paper.TopMargin := 20;
    paper.BottomMargin := 20;
    paper.LeftMargin := 10;
    paper.RightMargin := 10;
    paper.Width := a4Width;
    paper.Length := a4Length; 
    
    ! ========================== Code ============================= !
    
    ! Process for the inicialization program
    PROC startDefault( )        
        ! Clear console
        TPErase;         

        ! JumpHome; !TODO
        TPWrite "O robot está pronto a ser operado.";
 
        WaitTime(1);
    ENDPROC

    ! ==================== Code - mainMenu ======================== !
    
    PROC mainMenu( )
        ! Clear console
        TPErase;         
        
        ! Welcome page.
        !TPWrite "Plotter & Open Robótica";
        
        ! Options of the menu
        TPReadFK answerInitMenu ,                                    ! Where is stored the option
                 "Plotter & Open Robótica" ,                         ! What it writes on the screen
                 "Escrever Manualmente" ,                            ! Option 1
                 "Definições texto" ,                                ! Option 2
                 "Definições folha" ,                                ! Option 3 
                 "Imprimir",                                         ! Option 4
                 "Debug";                                            ! Option 5 

            IF 1 = answerInitMenu THEN  
                writeTextMenu ;
                
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
        WHILE 5 <> answerPaperMenu DO
            ! Clear the console
            TPErase;

        ENDWHILE        
    ENDPROC

    ! ==================== Code - settingsText ==================== !

    PROC settingsTextMenu( )
        WHILE 5 <> answerPaperMenu DO
            ! Clear the console
            TPErase;

        ENDWHILE        
    ENDPROC

    ! ==================== Code - settingsPage ==================== !
    
    PROC settingsPageMenu( )
        WHILE 5 <> answerPaperMenu DO
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
                orientationPageMenu ;   
                
            ELSEIF 3 = answerPaperMenu THEN
                marginsPageMenu ;
                
            ELSEIF 4 = answerPaperMenu THEN
                algnmentPageMenu ;                 

            ELSEIF 5 = answerPaperMenu THEN
                answerPaperMenu := 0 ;
            ENDIF                             
        ENDWHILE        
    ENDPROC

    PROC tpWriteReportSettingsPageMenu( )
        TPWrite("Definições de página:");

        ! Display paper size
        TPWrite("Formato da folha: " + paper.Size + " (" + NumToStr( paper.Width ) + " mm, " + NumToStr( paper.Length ) + " mm)");

        ! Display paper orientation
        TPWrite("Orientação da folha: " + paper.Orientation );

        ! Display paper margins
        TPWrite("Margens da folha: " + NumToStr( paper.TopMargin ) + " (cabeçalho), " + NumToStr( paper.BottomMargin ) + " (rodapé), " + NumToStr( paper.LeftMargin ) + " (esquerda), " + NumToStr( paper.RightMargin ) + " (direita)");

        ! Display text alignment
        TPWrite("Alinhamento do texto: " + paper.Alignment );
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
            paper.Size := "A3" ;
            paper.Width := a3Width;
            paper.Length := a3Length; 
            
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            paper.Size := "A4" ;
            paper.Width := a4Width;
            paper.Length := a4Length; 
            
        ELSEIF 3 = answerPaperMenu2 THEN
            paper.Size := "A5" ;
            paper.Width := a5Width;
            paper.Length := a5Length; 
            
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
            paper.Orientation := "Horizontal";
            
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            paper.Orientation := "Vertical";
            
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
            paper.TopMargin := 20;
            
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            paper.BottomMargin := 20;
            
        ELSEIF 3 = answerPaperMenu2 THEN
            paper.LeftMargin := 10;
            
        ELSEIF 4 = answerPaperMenu2 THEN
            paper.RightMargin := 10;
            
        ELSEIF 5 = answerPaperMenu2 THEN
            answerPaperMenu2 := 0 ;
        ENDIF                             
    ENDPROC

    PROC orientationPageMenu( )
        ! Options to change orientation
        TPReadFK answerPaperMenu2, 
                 stEmpty , 
                 "Centro" , 
                 "Esquerda" , 
                 "Direita" , 
                 "Justificado" , 
                 "Voltar" ;

        IF 1 = answerPaperMenu2 THEN  
            paper.Alignment := "Centro";
            
        ELSEIF 2 = answerPaperMenu2 THEN                                                        
            paper.Alignment := "Esquerda";
            
        ELSEIF 3 = answerPaperMenu2 THEN
            paper.Alignment := "Direita";
           
        ELSEIF 4 = answerPaperMenu2 THEN
            paper.Alignment := "Justificado";
            
        ELSEIF 5 = answerPaperMenu2 THEN
            answerPaperMenu2 := 0 ;
        ENDIF                             
    ENDPROC

    ! ==================== Code - printingMenu ==================== !

    PROC printingPageMenu( )
        WHILE 5 <> answerPaperMenu DO
            ! Clear the console
            TPErase;

        ENDWHILE        
    ENDPROC

    ! ==================== Code - debugMenu ==================== !

    PROC debugMenu( )
        WHILE 5 <> answerPaperMenu DO
            ! Clear the console
            TPErase;

        ENDWHILE        
    ENDPROC
    
ENDMODULE

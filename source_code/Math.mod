MODULE Math
    ! ============== Declara??o de Variaveis =======================
    
    ! Apoio para as perguntas
    VAR num answer_impress;
   
    ! Write array
    PERS string char_impress;

    VAR num userInputTextLenght := 0;
    VAR num workSpaceWidth;
    VAR num workSpaceLength;
    VAR num letterLenghtAutomated;
    VAR num letterWidthAutomated;
    VAR num text_SpaceLettersAutomated;

    CONST num factorSpaceBetweenLetters := 2;
    CONST num factorHightLetter := 2;

    ! Position text
    VAR num xAvailable := 0 ;
    VAR num yAvailable := 0 ;
    VAR num coord_x_letter;
    VAR num coord_y_letter;
      
    PROC write_string()
        TPWrite "Insira a(s) palavra(s) pretendida(s) para imprimir.";
        userInputText := UIAlphaEntry(
            \Header:= "Impress�o",
            \Message:= ""
            \Icon:=iconInfo
            \InitString:= "OPEN ROBOTICA");
    ENDPROC
    
    
    PROC calculateSizeLetterAutomated()
        ! Get the amount of chars in the array of text
        userInputTextLenght := StrLen(userInputText);

        ! Garentee the user actually inserts a text
        IF 0 = userInputTextLenght THEN
              TPWrite "Error : Necessário texto para poder imprimir."
        ENDIF
        
        ! Get the size of the page
        workSpaceWidth := paper_Width - paper_LeftMargin - paper_RightMargin ;
        workSpaceLength := paper_Length - paper_TopMargin - paper_BottomMargin ;

        ! Calculate the width of the text acordingly to fit the page line
        letterWidthAutomated := ( workSpaceWidth - ( ( userInputTextLenght - 1 ) * text_SpaceLetters ) ) DIV userInputTextLenght ;
        
        ! Calculate the space required between letters 
        text_SpaceLettersAutomated := text_SpaceLetters * letterWidthAutomated DIV factorSpaceBetweenLetters ;

        ! Recalculate the lenght of the text acordingly to fit the page line considering the new spacement
        letterWidthAutomated := ( workSpaceWidth - ( ( userInputTextLenght - 1 ) * text_SpaceLettersAutomated ) ) DIV userInputTextLenght ;

        ! Garantee a minimum space between
        IF 0 = text_SpaceLettersAutomated THEN
             text_SpaceLettersAutomated := 0.1;
        ENDIF
                        
        ! Calcule the necessary height of letter 
        letterLenghtAutomated := letterWidthAutomated * factorHightLetter;

        IF workSpaceLength  < letterLenghtAutomated  THEN
            letterLenghtAutomated := workSpaceLength ;
        ENDIF
    ENDPROC
    
    PROC calculateOrigin( ) 

        IF FALSE = automatic THEN
	        IF "Esquerda" = paper_alignment THEN
	        	xAvailable := paper_LeftMargin;
	        ELSEIF "Direita" = paper_alignment THEN
	        	xAvailable := paper_RightMargin - letterWidthAutomated * userInputTextLenght ;
	        ELSEIF "Centrado" = paper_alignment THEN
	            xAvailable := workSpaceWidth / 2 - letterWidthAutomated * userInputTextLenght ;
	        ELSEIF "Justificado" = paper_alignment THEN
	        	xAvailable := paper_LeftMargin;
	        ENDIF          

	        IF 0 = yAvailable THEN
	            yAvailable := paper_Length - paper_TopMargin ; 
	        ELSE
	            yAvailable := coord_y_letter - letterLenghtAutomated - text_SpaceLettersAutomated ;
	            !Condition to out page
	            IF 0 > ( yAvailable - letterLenghtAutomated ) THEN 
                     TPWrite "Error : Fora de página";
                     RETURN FALSE;
	            ENDIF 
	        ENDIF

        ELSEIF TRUE = automatic THEN
	       	xAvailable := paper_LeftMargin;
        ENDIF
        
        
        coord_x_letter := x_available;
        coord_y_letter := y_available - letter_widht_aut;

    ENDPROC    
ENDMODULE

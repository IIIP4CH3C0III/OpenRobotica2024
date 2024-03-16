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

    CONST num factorSpaceBetweenLetters := 5;
    CONST num factorHightLetter := 2;

    ! Position text
    VAR num xAvailable := 0 ;
    VAR num yAvailable := 0 ;
    VAR num coord_x_letter;
    VAR num coord_y_letter;
      
    PROC write_string()
        TPWrite "Insira a(s) palavra(s) pretendida(s) para imprimir.";
        userInputText := UIAlphaEntry(
            \Header:= "Impressão",
            \Message:= ""
            \Icon:=iconInfo
            \InitString:= "OPEN ROBOTICA");
    ENDPROC
    
    
    PROC calculateSizeLetterAutomated()
        ! Get the amount of chars in the array of text
        userInputTextLenght := StrLen(userInputText);

        ! Garentee the user actually inserts a text
        IF 0 = userInputTextLenght THEN
              TPWrite "Error : Necessário texto para poder imprimir.";
              errorA := TRUE;
              RETURN ;
        ENDIF
        
        ! Get the size of the page
        workSpaceWidth := paper_Width - paper_LeftMargin - paper_RightMargin ;
        workSpaceLength := paper_Length - paper_TopMargin - paper_BottomMargin ;

        ! Calculate the width of the text acordingly to fit the page line
        letterWidthAutomated := ( workSpaceWidth - ( ( userInputTextLenght - 1 ) * text_SpaceLetters ) ) DIV userInputTextLenght ;
        
        FOR I FROM 1 TO 10 DO
            ! Calculate the space required between letters 
            text_SpaceLettersAutomated := text_SpaceLetters + letterWidthAutomated DIV factorSpaceBetweenLetters ;
    
            ! Recalculate the lenght of the text acordingly to fit the page line considering the new spacement
            letterWidthAutomated := ( workSpaceWidth - ( ( userInputTextLenght - 1 ) * text_SpaceLettersAutomated ) ) DIV userInputTextLenght ;
        ENDFOR 

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
        ELSEIF TRUE = automatic THEN
	       	xAvailable := paper_LeftMargin;
	        IF 0 = yAvailable THEN
	            yAvailable := paper_Length - paper_TopMargin - letterLenghtAutomated; 
	        ELSE
	            yAvailable := coord_y_letter - letterLenghtAutomated - text_SpaceParag ;
	            !Condition to out page
	            IF 0 > yAvailable THEN 
                     TPWrite "Error : Fora de página";
                     errorA := TRUE;
                     RETURN;
	            ENDIF 
	        ENDIF
        ENDIF        
        
        coord_x_letter := xAvailable;
        coord_y_letter := yAvailable;
    ENDPROC    
ENDMODULE

MODULE Fonts

    ! Offset Z
    VAR num offsetZ := 10;

    ! On the paper
    
    VAR robtarget target_oInf1Esq1;
    VAR robtarget target_oInf1Esq2;
    VAR robtarget target_oInf1Centro;
    VAR robtarget target_oInf1Dir1;
    VAR robtarget target_oInf1Dir2;

    VAR robtarget target_oInf2Esq1;
    VAR robtarget target_oInf2Esq2;
    VAR robtarget target_oInf2Centro;
    VAR robtarget target_oInf2Dir1;
    VAR robtarget target_oInf2Dir2;

    VAR robtarget target_oCentroEsq1;
    VAR robtarget target_oCentroEsq2;
    VAR robtarget target_oCentroCentro;
    VAR robtarget target_oCentroDir1;
    VAR robtarget target_oCentroDir2;

    VAR robtarget target_oSup1Esq1;
    VAR robtarget target_oSup1Esq2;
    VAR robtarget target_oSup1Centro;
    VAR robtarget target_oSup1Dir1;
    VAR robtarget target_oSup1Dir2;

    VAR robtarget target_oSup2Esq1;
    VAR robtarget target_oSup2Esq2;
    VAR robtarget target_oSup2Centro;
    VAR robtarget target_oSup2Dir1;
    VAR robtarget target_oSup2Dir2;

    ! Above the paper

    VAR robtarget target_aInf1Esq1;
    VAR robtarget target_aInf1Esq2;
    VAR robtarget target_aInf1Centro;
    VAR robtarget target_aInf1Dir1;
    VAR robtarget target_aInf1Dir2;

    VAR robtarget target_aInf2Esq1;
    VAR robtarget target_aInf2Esq2;
    VAR robtarget target_aInf2Centro;
    VAR robtarget target_aInf2Dir1;
    VAR robtarget target_aInf2Dir2;

    VAR robtarget target_aCentroEsq1;
    VAR robtarget target_aCentroEsq2;
    VAR robtarget target_aCentroCentro;
    VAR robtarget target_aCentroDir1;
    VAR robtarget target_aCentroDir2;

    VAR robtarget target_aSup1Esq1;
    VAR robtarget target_aSup1Esq2;
    VAR robtarget target_aSup1Centro;
    VAR robtarget target_aSup1Dir1;
    VAR robtarget target_aSup1Dir2;

    VAR robtarget target_aSup2Esq1;
    VAR robtarget target_aSup2Esq2;
    VAR robtarget target_aSup2Centro;
    VAR robtarget target_aSup2Dir1;
    VAR robtarget target_aSup2Dir2;

    ! Last Position     
    VAR robtarget last_position;

PROC draw( )
    
       TPWrite "Caracter a Imprimir: " + character;
       IF "Classic" = text_FontType THEN 
	        IF "A" = character OR "a" = character THEN
	            ! Instructions to draw letter "A"
                Letra_A;
	        ELSEIF "B" = character OR "b" = character THEN
	            ! Instructions to draw letter "B"
                Letra_B;
	        ELSEIF "C" = character OR "c" = character THEN
	            ! Instructions to draw letter "C"
	        ELSEIF "D" = character OR "d" = character THEN
	            ! Instructions to draw letter "D"
	        ELSEIF "E" = character OR "e" = character THEN
	            ! Instructions to draw letter "E"
	        ELSEIF "F" = character OR "f" = character THEN
	            ! Instructions to draw letter "F"
	        ELSEIF "G" = character OR "g" = character THEN
	            ! Instructions to draw letter "G"
	        ELSEIF "H" = character OR "h" = character THEN
	            ! Instructions to draw letter "H"
	        ELSEIF "I" = character OR "i" = character THEN
	            ! Instructions to draw letter "I"
	        ELSEIF "J" = character OR "j" = character THEN
	            ! Instructions to draw letter "J"
	        ELSEIF "K" = character OR "k" = character THEN
	            ! Instructions to draw letter "K"
	        ELSEIF "L" = character OR "l" = character THEN
	            ! Instructions to draw letter "L"
	        ELSEIF "M" = character OR "m" = character THEN
	            ! Instructions to draw letter "M"
	        ELSEIF "N" = character OR "n" = character THEN
	            ! Instructions to draw letter "N"
	        ELSEIF "O" = character OR "o" = character THEN
	            ! Instructions to draw letter "O"
	        ELSEIF "P" = character OR "p" = character THEN
	            ! Instructions to draw letter "P"
	        ELSEIF "Q" = character OR "q" = character THEN
	            ! Instructions to draw letter "Q"
	        ELSEIF "R" = character OR "r" = character THEN
	            ! Instructions to draw letter "R"
	        ELSEIF "S" = character OR "s" = character THEN
	            ! Instructions to draw letter "S"
	        ELSEIF "T" = character OR "t" = character THEN
	            ! Instructions to draw letter "T"
	        ELSEIF "U" = character OR "u" = character THEN
	            ! Instructions to draw letter "U"
	        ELSEIF "V" = character OR "v" = character THEN
	            ! Instructions to draw letter "V"
	        ELSEIF "W" = character OR "w" = character THEN
	            ! Instructions to draw letter "W"
	        ELSEIF "X" = character OR "x" = character THEN
	            ! Instructions to draw letter "X"
	        ELSEIF "Y" = character OR "y" = character THEN
	            ! Instructions to draw letter "Y"
	        ELSEIF "Z" = character OR "z" = character THEN

	           ! Instructions to draw letter "Z"
		        target_aInf1Esq1 := Offs(origem, coord_y_letter, coord_x_letter, -offsetZ); 
		        target_oInf1Esq1 := Offs(origem, coord_y_letter, coord_x_letter, 0); 
		        target_aInf1Dir2 := Offs(target_aInf1Esq1, 0, comprimento_letras,0);
		        target_oInf1Dir2 := Offs(target_oInf1Esq1, 0, comprimento_letras,0);

		        target_aSup1Esq1 := Offs(target_aInf1Esq1, altura_letras, 0, 0);
		        target_oSup1Esq1 := Offs(target_oInf1Esq1, altura_letras, 0, 0);
		        target_aSup1Dir2 := Offs(target_aSup1Esq1, 0, comprimento_letras,0);
		        target_oSup1Dir2 := Offs(target_oSup1Esq1, 0, comprimento_letras,0);

		        ! Movement
		        MoveJ target_aSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        

		        
	        ELSEIF " " = character THEN
	            ! Instructions to draw letter " "
	        ELSE

	        ENDIF
	      ENDIF
    ENDPROC    
ENDMODULE

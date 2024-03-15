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
       
       target_aInf1Esq1   := Offs(origem, coord_y_letter, coord_x_letter, -offsetZ); 
       target_oInf1Esq1   := Offs(origem, coord_y_letter, coord_x_letter, 0); 
       target_aInf1Esq2   := Offs(target_aInf1Esq1, 0 , comprimento_letras / 4 , 0); 
       target_oInf1Esq2   := Offs(target_oInf1Esq1, 0 , comprimento_letras / 4 , 0); 
       target_aInf1Centro := Offs(target_aInf1Esq1, 0 , comprimento_letras / 2 , 0); 
       target_oInf1Centro := Offs(target_oInf1Esq1, 0 , comprimento_letras / 2 , 0); 
       target_aInf1Dir1   := Offs(target_aInf1Esq1, 0 , comprimento_letras * 3 / 4 , 0); 
       target_oInf1Dir1   := Offs(target_oInf1Esq1, 0 , comprimento_letras * 3 / 4 , 0); 
       target_aInf1Dir2   := Offs(target_aInf1Esq1, 0 , comprimento_letras , 0); 
       target_oInf1Dir2   := Offs(target_oInf1Esq1, 0 , comprimento_letras , 0); 


       target_aInf1Esq1   := Offs(target_aInf1Esq1, altura_letras / 4 , 0 , 0); 
       target_oInf1Esq1   := Offs(target_oInf1Esq1, altura_letras / 4 , 0 , 0); 
       target_aInf1Esq2   := Offs(target_aInf1Esq1, altura_letras / 4 , comprimento_letras / 4 , 0); 
       target_oInf1Esq2   := Offs(target_oInf1Esq1, altura_letras / 4 , comprimento_letras / 4 , 0); 
       target_aInf1Centro := Offs(target_aInf1Esq1, altura_letras / 4 , comprimento_letras / 2 , 0); 
       target_oInf1Centro := Offs(target_oInf1Esq1, altura_letras / 4 , comprimento_letras / 2 , 0); 
       target_aInf1Dir1   := Offs(target_aInf1Esq1, altura_letras / 4 , comprimento_letras * 3 / 4 , 0); 
       target_oInf1Dir1   := Offs(target_oInf1Esq1, altura_letras / 4 , comprimento_letras * 3 / 4 , 0); 
       target_aInf1Dir2   := Offs(target_aInf1Esq1, altura_letras / 4 , comprimento_letras , 0); 
       target_oInf1Dir2   := Offs(target_oInf1Esq1, altura_letras / 4 , comprimento_letras , 0); 


       target_aCentroEsq1   := Offs(target_aInf1Esq1, altura_letras / 2 , 0 , 0); 
       target_oCentroEsq1   := Offs(target_oInf1Esq1, altura_letras / 2 , 0 , 0); 
       target_aCentroEsq2   := Offs(target_aInf1Esq1, altura_letras / 2 , comprimento_letras / 4 , 0); 
       target_oCentroEsq2   := Offs(target_oInf1Esq1, altura_letras / 2 , comprimento_letras / 4 , 0); 
       target_aCentroCentro := Offs(target_aInf1Esq1, altura_letras / 2 , comprimento_letras / 2 , 0); 
       target_oCentroCentro := Offs(target_oInf1Esq1, altura_letras / 2 , comprimento_letras / 2 , 0); 
       target_aCentroDir1   := Offs(target_aInf1Esq1, altura_letras / 2 , comprimento_letras * 3 / 4 , 0); 
       target_oCentroDir1   := Offs(target_oInf1Esq1, altura_letras / 2 , comprimento_letras * 3 / 4 , 0); 
       target_aCentroDir2   := Offs(target_aInf1Esq1, altura_letras / 2 , comprimento_letras , 0); 
       target_oCentroDir2   := Offs(target_oInf1Esq1, altura_letras / 2 , comprimento_letras , 0); 

       target_aSup2Esq1   := Offs(target_aInf1Esq1, altura_letras * 3 / 4 , 0 , 0); 
       target_oSup2Esq1   := Offs(target_oInf1Esq1, altura_letras * 3 / 4 , 0 , 0); 
       target_aSup2Esq2   := Offs(target_aInf1Esq1, altura_letras * 3 / 4 , comprimento_letras / 4 , 0); 
       target_oSup2Esq2   := Offs(target_oInf1Esq1, altura_letras * 3 / 4 , comprimento_letras / 4 , 0); 
       target_aSup2Centro := Offs(target_aInf1Esq1, altura_letras * 3 / 4 , comprimento_letras / 2 , 0); 
       target_oSup2Centro := Offs(target_oInf1Esq1, altura_letras * 3 / 4 , comprimento_letras / 2 , 0); 
       target_aSup2Dir1   := Offs(target_aInf1Esq1, altura_letras * 3 / 4 , comprimento_letras * 3 / 4 , 0); 
       target_oSup2Dir1   := Offs(target_oInf1Esq1, altura_letras * 3 / 4 , comprimento_letras * 3 / 4 , 0); 
       target_aSup2Dir2   := Offs(target_aInf1Esq1, altura_letras * 3 / 4 , comprimento_letras , 0); 
       target_oSup2Dir2   := Offs(target_oInf1Esq1, altura_letras * 3 / 4 , comprimento_letras , 0); 

       target_aSup1Esq2   := Offs(target_aInf1Esq1, altura_letras , 0 , 0); 
       target_oSup1Esq2   := Offs(target_oInf1Esq1, altura_letras , 0 , 0); 
       target_aSup1Esq2   := Offs(target_aInf1Esq1, altura_letras , comprimento_letras / 4 , 0); 
       target_oSup1Esq2   := Offs(target_oInf1Esq1, altura_letras , comprimento_letras / 4 , 0); 
       target_aSup1Centro := Offs(target_aInf1Esq1, altura_letras , comprimento_letras / 2 , 0); 
       target_oSup1Centro := Offs(target_oInf1Esq1, altura_letras , comprimento_letras / 2 , 0); 
       target_aSup1Dir1   := Offs(target_aInf1Esq1, altura_letras , comprimento_letras * 3 / 4 , 0); 
       target_oSup1Dir1   := Offs(target_oInf1Esq1, altura_letras , comprimento_letras * 3 / 4 , 0); 
       target_aSup1Dir2   := Offs(target_aInf1Esq1, altura_letras , comprimento_letras , 0); 
       target_oSup1Dir2   := Offs(target_oInf1Esq1, altura_letras , comprimento_letras , 0); 

       IF "Classic" = text_FontType THEN 
	        IF "A" = character OR "a" = character THEN
	            ! Instructions to draw letter "A"
                 MoveJ target_aInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
                 MoveL target_oInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
                 MoveL target_oSup1Esq1, v100, z50, pen\WObj:=Workobject_Paper;
                 MoveL target_oSup1Dir2, v100, z50, pen\WObj:=Workobject_Paper;
                 MoveL target_oInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
                 MoveL target_oCentroDir2, v100, z0, pen\WObj:=Workobject_Paper;
                 MoveL target_oCentroEsq1, v100, fine, pen\WObj:=Workobject_Paper;
                 MoveL target_aCentroEsq1, v100, fine, pen\WObj:=Workobject_Paper;
                
	        ELSEIF "B" = character OR "b" = character THEN
	            ! Instructions to draw letter "B"
                MoveJ target_oInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
                MoveL target_oInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
                MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
                MoveL target_oSup1Centro, v100, z0, pen\WObj:=Workobject_Paper;
                MoveC target_oSup2Dir2, target_oCentroCentro, v100, fine, pen\WObj:=Workobject_Paper;
                MoveL target_oCentroEsq1, v100, fine, pen\WObj:=Workobject_Paper;
                MoveL target_oCentroCentro, v100, fine, pen\WObj:=Workobject_Paper;
                MoveC target_oInf2Dir2 ,target_oInf1Centro, v100, fine, pen\WObj:=Workobject_Paper;
                MoveL target_oInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
                MoveL target_aInf1Esq1, v100, z0, pen\WObj:=Workobject_Paper;
            
	        ELSEIF "C" = character OR "c" = character THEN
                
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
		        ! Movement
		        MoveJ target_aInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oCentroCentro, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
	            
	        ELSEIF "N" = character OR "n" = character THEN
		        ! Movement
		        MoveJ target_aInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;

	        ELSEIF "O" = character OR "o" = character THEN
		        ! Movement
		        MoveJ target_aCentroEsq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oCentroEsq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveC target_oSup1Centro , target_oCentroDir2 , v100, fine, pen\WObj:=Workobject_Paper;
		        MoveC target_oInf1Centro , target_oCentroEsq1 , v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aCentroEsq1, v100, fine, pen\WObj:=Workobject_Paper;

	        ELSEIF "P" = character OR "p" = character THEN
		        ! Movement
		        MoveJ target_aInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveC target_oSup2Dir2 , target_oCentroEsq2 , v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oCentroEsq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aCentroEsq1, v100, fine, pen\WObj:=Workobject_Paper;
                           
	        ELSEIF "Q" = character OR "q" = character THEN
	            ! Instructions to draw letter "Q"
	        ELSEIF "R" = character OR "r" = character THEN
	            ! Instructions to draw letter "R"
	        ELSEIF "S" = character OR "s" = character THEN
		        ! Movement
		        MoveJ target_aSup2Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup2Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveC target_oSup1Centro , target_oSup2Esq1 , v100, fine, pen\WObj:=Workobject_Paper;
		        
                MoveL target_oCentroEsq1, v100, z150, pen\WObj:=Workobject_Paper;
                MoveL target_oCentroCentro, v100, fine, pen\WObj:=Workobject_Paper;
                MoveL target_oCentroDir2, v100, z150, pen\WObj:=Workobject_Paper;
                MoveL target_oInf2Dir2, v100, fine, pen\WObj:=Workobject_Paper;

                MoveC target_oInf1Centro , target_oInf2Esq1 , v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aInf2Esq1, v100, fine, pen\WObj:=Workobject_Paper;
                

	        ELSEIF "T" = character OR "t" = character THEN
		        ! Movement
		        MoveJ target_aSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Centro, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Centro, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aInf1Centro, v100, fine, pen\WObj:=Workobject_Paper;
                
	        ELSEIF "U" = character OR "u" = character THEN
		        ! Movement
		        MoveJ target_aSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf2Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveC target_oInf1Centro , target_oInf2Dir2 , v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;	            
		        MoveL target_aSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;	            


	        ELSEIF "V" = character OR "v" = character THEN
		        ! Movement
		        MoveJ target_aSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Centro, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        !MoveL target_aInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;

	        ELSEIF "W" = character OR "w" = character THEN
		        ! Movement
		        MoveJ target_aSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Esq2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oCentroCentro, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Dir1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        !MoveL target_aInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;

	        ELSEIF "X" = character OR "x" = character THEN
		        ! Movement
		        MoveJ target_aSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        !MoveL target_aInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;

	        ELSEIF "Y" = character OR "y" = character THEN
		        ! Movement
		        MoveJ target_aSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oCentroCentro, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aCentroCentro, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oCentroCentro, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Centro, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aInf1Centro, v100, fine, pen\WObj:=Workobject_Paper;
		        !MoveL target_aInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
                 
	        ELSEIF "Z" = character OR "z" = character THEN
		        ! Movement
		        MoveJ target_aSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oSup1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_oInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        MoveL target_aInf1Dir2, v100, fine, pen\WObj:=Workobject_Paper;
		        
	        ELSEIF " " = character THEN
	            ! Instructions to draw letter " "
                MoveJ target_aInf1Esq1, v100, fine, pen\WObj:=Workobject_Paper;
	        ELSE

	        ENDIF
	      ENDIF
    ENDPROC    
ENDMODULE

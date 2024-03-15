MODULE DryLetter
    ! definição de variáveis
    ! pontos das letras

    VAR robtarget inf_esq1;
    VAR robtarget inf_esq2;
    VAR robtarget inf_centro;
    VAR robtarget inf_dir1;
    VAR robtarget inf_dir2;
    VAR robtarget meio_esq;
    VAR robtarget meio_centro;
    VAR robtarget meio_dir;
    VAR robtarget sup_esq;
    VAR robtarget sup_centro;
    VAR robtarget sup_dir;
    VAR robtarget sup_dir_meio;
    VAR robtarget inf_dir_meio;

    ! subir/descer a caneta

    VAR robtarget up_inf_esq1;
    VAR robtarget up_inf_dir2;
    VAR robtarget up_meio_centro;
    VAR robtarget up_meio_esq;
    VAR robtarget up_final;

    VAR robtarget last_position;
    ! Letra A

PROC Letra_A()

! definição Offs

    ! adaptar origem
    
    up_inf_esq1 := Offs (Origem, coord_y_letter, coord_x_letter, -10); ! -10 é o valor para levantar a caneta (verificar o valor para levantar)
    inf_esq1 := Offs (up_inf_esq1, 0, 0, 10); ! está no mesmo ponto, apenas desce a caneta
    sup_esq := Offs (inf_esq1, altura_letras, 0, 0);
    sup_dir := Offs (sup_esq, 0, comprimento_letras, 0);
    inf_dir2 := Offs (sup_dir, -altura_letras, 0, 0);
    up_inf_dir2 := Offs (inf_dir2, 0, 0, -10);
    meio_dir := Offs (up_inf_dir2, altura_letras/2, 0, 10);
    meio_esq := Offs (meio_dir, 0, -comprimento_letras, 0);
    up_final := Offs (meio_esq, 0, 0, -10);
    
! definição Trajeto

    ! adaptar origem

    MoveJ up_inf_esq1, v100, fine, pen\WObj:=Workobject_Paper;
    MoveL inf_esq1, v100, fine, pen\WObj:=Workobject_Paper;
    MoveL sup_esq, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL sup_dir, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL inf_dir2, v100, fine, pen\WObj:=Workobject_Paper;
    MoveL up_inf_dir2, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL meio_dir, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL meio_esq, v100, fine, pen\WObj:=Workobject_Paper;
    MoveL up_final, v100, z0, pen\WObj:=Workobject_Paper;

    last_position := CRobT(\Tool:=pen\WObj:=Workobject_Paper);
    
ENDPROC

PROC Letra_B() 

! definição Offs

    ! adaptar origem

    up_inf_esq1 := Offs (Origem, coord_y_letter, coord_x_letter, -10); 
    inf_esq1 := Offs (up_inf_esq1, 0, 0, 10);
    sup_esq := Offs (inf_esq1, altura_letras, 0, 0);
    sup_centro := Offs (sup_esq, 0, comprimento_letras/2, 0);
    sup_dir_meio := Offs (sup_centro, -altura_letras/4, comprimento_letras/2,0);
    meio_centro := Offs (sup_centro, -altura_letras/2, 0, 0); ! no MoveL tenho de fazer z30 (experimentar -> se quiser curva maior, fazer valor > 30)
    inf_dir_meio := Offs (meio_centro, -altura_letras/4, comprimento_letras/2,0);
    meio_esq := Offs(meio_centro,0,-comprimento_letras/2, 0);
    inf_centro := Offs (meio_centro, -altura_letras/2, 0, 0); !z30
    
    up_final := Offs (inf_esq1, 0, 0, -10);
    
    ! definição Trajeto

    ! adaptar origem

    MoveJ up_inf_esq1, v100, fine, pen\WObj:=Workobject_Paper;
    MoveL inf_esq1, v100, fine, pen\WObj:=Workobject_Paper;
    MoveL sup_esq, v100, fine, pen\WObj:=Workobject_Paper;
    MoveL sup_centro, v100, z0, pen\WObj:=Workobject_Paper;
    MoveC sup_dir_meio, meio_centro, v100, fine, pen\WObj:=Workobject_Paper;
    MoveL meio_esq, v100, fine, pen\WObj:=Workobject_Paper;
    MoveL meio_centro, v100, fine, pen\WObj:=Workobject_Paper;
    MoveC inf_dir_meio ,inf_centro, v100, fine, pen\WObj:=Workobject_Paper;
    MoveL inf_esq1, v100, fine, pen\WObj:=Workobject_Paper;
    
    MoveL up_final, v100, z0, pen\WObj:=Workobject_Paper;

    last_position := CRobT(\Tool:=pen\WObj:=Workobject_Paper);
ENDPROC
   

ENDMODULE
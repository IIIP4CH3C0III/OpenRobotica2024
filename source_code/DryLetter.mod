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

    ! subir/descer a caneta

    VAR robtarget up_inf_esq1;
    VAR robtarget up_inf_dir2;
    VAR robtarget up_meio_centro;
    VAR robtarget up_meio_esq;

    ! Letra A

PROC Letra_A()

! definição Offs

    ! adaptar origem

    MoveJ Origem,v1000,fine,pen\WObj:=Workobject_Paper;
    
    up_inf_esq1 := Offs (Origem, coord_y_letter, coord_y_letter, -30); ! -30 é o valor para levantar a caneta (verificar o valor para levantar)
    inf_esq1 := Offs (up_inf_esq1, 0, 0, 30); ! está no mesmo ponto, apenas desce a caneta
    sup_esq := Offs (inf_esq1, altura_letras, 0, 0);
    sup_dir := Offs (sup_esq, 0, comprimento_letras, 0);
    inf_dir2 := Offs (sup_dir, -altura_letras, 0, 0);
    up_inf_dir2 := Offs (inf_dir2, 0, 0, 10);
    meio_dir := Offs (up_inf_dir2, altura_letras/2, 0, -30);
    meio_esq := Offs (meio_dir, 0, -comprimento_letras, 0);

! definição Trajeto

    ! adaptar origem

    MoveJ Origem,v1000,z100,pen\WObj:=Workobject_Paper;

    MoveL up_inf_esq1, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL inf_esq1, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL sup_esq, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL sup_dir, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL inf_dir2, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL up_inf_dir2, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL meio_dir, v100, z0, pen\WObj:=Workobject_Paper;
    MoveL meio_esq, v100, z0, pen\WObj:=Workobject_Paper;

ENDPROC    
   
ENDMODULE
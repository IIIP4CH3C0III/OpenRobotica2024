MODULE MainModule
    
        CONST robtarget Target_10:=[[0,0,0],[1,0,0,0],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[70,30,0],[1,0,0,0],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[0,60,0],[1,0,0,0],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PROC main()
       ! Default sequence to reposition the robot
       startDefault;
       
       ! Main loop
        WHILE TRUE DO
            mainMenu;    
        ENDWHILE
           
    ENDPROC
    PROC Path_A()
        MoveJ Target_10,v1000,z100,pen\WObj:=Workobject_Paper;
        MoveL Target_20,v1000,z100,pen\WObj:=Workobject_Paper;
        MoveL Target_30,v1000,z100,pen\WObj:=Workobject_Paper;
    ENDPROC
ENDMODULE
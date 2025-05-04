//FORCE : normal balistic ; EFFECT : spin
//Unit : meter
clear
clc
close
clf

//polyline 1
x=[-1 -1 1 1 -1]
y=[-1 1 1 -1 -1]
z=[0 0 0 0 0]

//curve = param3d(r.*sin(t), r.*cos(t), t/10, 30, 72,"X@Y@Z",[4,4])
curve =param3d(x,y,z)






curve.mark_mode = "on";
curve.mark_style = 10;
curve.mark_foreground = color("magenta");
curve.foreground = color("magenta");


//polyline 2
x2=[-1 -1 1 1 -1]
y2=[-1 1 1 -1 -1]
z2=[0 0 0 0 0]+1

 
curve2 =param3d(x2,y2,z2)






curve2.mark_mode = "on";
curve2.mark_style = 10;
curve2.mark_foreground = color("green");
curve2.foreground = color("green");

//TODO  without vs with effect


//TODO Reflection by Xcos

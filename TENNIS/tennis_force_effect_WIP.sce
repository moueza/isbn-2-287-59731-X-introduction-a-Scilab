//FORCE : normal balistic ; EFFECT : spin
//Unit : meter, h
g=9.8 //9.8/s*s TODO
clear
clc
close
clf

//Chapter 1 polyline 1 GROUND
x=[-1 -1 1 1 -1]
y=[-1 1 1 -1 -1]
z=[0 0 0 0 0]

//curve = param3d(r.*sin(t), r.*cos(t), t/10, 30, 72,"X@Y@Z",[4,4])
curve =param3d(x,y,z)
curve.mark_mode = "on";
curve.mark_style = 10;
curve.mark_foreground = color("magenta");
curve.foreground = color("magenta");





//Chapter 2 FORCE
force3D.from = []
force3D.from = []
speed=100000  //m/h
//z2= m*v2*v2-m*g*z2
z2=2
x2=[-1 -1 1 1 -1]
y2=[-1 1 1 -1 -1]
z2=[0 0 0 0 1]+1

 
curve2 =param3d(x2,y2,z2)
curve2.mark_mode = "on";
curve2.mark_style = 10;
curve2.mark_foreground = color("green");
curve2.foreground = color("green");


//Chapter 3 EFFECT
//TODO  without vs with effect


//TODO Reflection by Xcos

//FORCE : normal balistic ; EFFECT : spin
//Unit : meter, h, g
// 56 et 59,4 grams... 57.7
// -L  <--   -->+L y
//   ^ +l
//   V -l
//where is hit the ball on the ball is reflected on the spin effect

clear//variables
clc
close
clf

g=9.8 //9.8/s*s TODO
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
//TODO  ballistic starting vector vs Speed ?
force3D.from = [0 -8 2]// at 2m height
force3D.to = [0 -7 3 ]
speed.tangent=100000  //km/h -> 1000*speed.tangent/3600 m/s
direction.vector=force3D.to - force3D.from
speed.vector=direction.vector/norm(direction.vector)
speed.vertical=speed.vector(3)

function z=ballistic1D_vectorized(t,z0,v0,g)
   //Scilab blue book p142
   z  =-.5*g*t.*t+v0.*t+z0//vectorized
endfunction
disp("ballistic",ballistic1D_vectorized(1,force3D.from(3),speed.vertical,g))


function [x,y,z]=ballistic3D_vectorized(t,z0,v0,g)
   //Scilab blue book p142
   //this type of function p150
   x=1.1
   y=2.222
   z  =3.3333//vectorized
endfunction
[x,y,z]=ballistic3D_vectorized(1,force3D.from(3),speed.vertical,g)
disp("ballistic3D",y)
V=[x,y,z]
disp("ballistic3D V",V)

//disp("ballistic3D",ballistic3D_vectorized(1,force3D.from(3),speed.vertical,g)(3))

//V=ballistic3D_vectorized(1,force3D.from(3),speed.vertical,g)
//disp(V)

x2=[-1 -1 1 1 -1]
y2=[-1 1 1 -1 -1]
//z2= m*v2*v2-m*g*z2
z2=2
z2=[0 0 0 0 1]+1

 
curve2 =param3d(x2,y2,z2)
curve2.mark_mode = "on";
curve2.mark_style = 10;
curve2.mark_foreground = color("green");
curve2.foreground = color("green");


//Chapter 3 EFFECT with coeff (bounce<- ground surface)
//TODO  without vs with effect


//TODO Reflection by Xcos

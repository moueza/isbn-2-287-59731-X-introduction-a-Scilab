clc
clf
//planet
//-------
//HELP  plot3d

f=gcf();
f.color_map = hot(128);
r=1;orig=[1.5 0 0];
deff("[x,y,z]=sph(alp,tet)",["x=r*cos(alp).*cos(tet)+orig(1)*ones(tet)";..
     "y=r*cos(alp).*sin(tet)+orig(2)*ones(tet)";..
     "z=r*sin(alp)+orig(3)*ones(tet)"]);
[xx,yy,zz]=eval3dp(sph,linspace(-%pi/2,%pi/2,40),linspace(0,%pi*2,20));
[xx1,yy1,zz1]=eval3dp(sph,linspace(-%pi/2,%pi/2,40),linspace(0,%pi*2,20));
cc=(xx+zz+2)*32;cc1=(xx1-orig(1)+zz1/r+2)*32;
clf();plot3d1([xx xx1],[yy yy1],list([zz,zz1],[cc cc1]),theta=70,alpha=80,flag=[5,6,3])
 
 

//----------------
  //param3d
  t = 0:0.1:5*%pi;
r = 1

//clf
curve = param3d(r.*sin(t), r.*cos(t), t/10, 30, 72,"X@Y@Z",[4,4])

curve.mark_mode = "on";
curve.mark_style = 10;
curve.mark_foreground = color("magenta");
 
 




//curve

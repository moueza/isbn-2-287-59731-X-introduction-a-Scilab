//cf plot3d manual :
// plot of a sphere using facets computed by eval3dp
deff("[x,y,z]=sph(U,V)",["x=r*cos(6.28*U)+R2*cos(6.28*U)+orig(1)*ones(U)";..
     "y=r*cos(6.28*V)+orig(2)*ones(U)";..
     "z=r*sin(6.28*V)+R2*sin(6.28*U)+orig(3)*ones(U)"]);
r=1; orig=[0 0 0];
R2=3 ; //big radius of torus
[xx,yy,zz]=eval3dp(sph,linspace(-1,1,40),linspace(-1,1,20));
clf();plot3d(xx,yy,zz)


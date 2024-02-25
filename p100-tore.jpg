//cf plot3d manual :
// plot of a sphere using facets computed by eval3dp
deff("[x,y,z]=sph(U,V)",["x=R2*cos(U)+orig(1)*ones(U)";..
     "y=r*cos(V)+orig(2)*ones(U)";..
     "z=r*sin(V)+R2*sin(U)+orig(3)*ones(U)"]);
r=1; orig=[0 0 0];
R2=3 ; //big radsius of torus
[xx,yy,zz]=eval3dp(sph,linspace(-%pi,%pi,40),linspace(0,%pi*4,20));
clf();plot3d(xx,yy,zz)

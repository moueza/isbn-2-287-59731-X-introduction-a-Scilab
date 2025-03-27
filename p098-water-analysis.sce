x=linspace(-100,100,100)'; y=x;//x and y are xc and yc
A=[0;100];B=[0;0];C=[30;30];
valA=300;valB=700;
//deff("val=dist(PntM,PntN)","val=sqrt((PntM(1)-PntN(1))^2+(PntM(2)-PntN(2))^2)");
//deff("val=dist(PntM,PntN)","val=PntM(1)");
deff("val=distCoord(xM,yM,xN,yN)","val=sqrt((xM-xN)^2+(yM-yN)^2)");
// test : dist(A,B)
//deff("z=f(x,y)","z=distAC*valB+distBC*valA");//dAC : distance between A and C, valB : water analysis at B
//deff("z=f(C)","z=dist(A,C)*valB+dist(B,C)*valA");
deff("z=f(x,y)","z=distCoord(A(1),A(2),x,y)*valB+distCoord(B(1),B(2),x,y)*valA");

disp(f(C(1),C(2)))
//z=feval(C,f);plot3d(x,y,z);
z=feval(x,y,f);plot3d(x,y,z);

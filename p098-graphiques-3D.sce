x=linspace(-2,2,100)'; y=x;
deff("z=f(x,y)","z=exp(-x*x-y*y)");
z=feval(x,y,f);plot3d(x,y,z);

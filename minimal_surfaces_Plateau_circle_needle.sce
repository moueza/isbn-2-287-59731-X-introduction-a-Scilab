//intelligence https://chatgpt.com/c/699d862c-e210-832f-98fb-c5cd8fd4da1f
x=linspace(-3,3,500)'; y=x;
R=10; h=.1;
clf;
deff("z=f(x,y)","z=h*(1-(sqrt(x*x+y*y))/R)");
//cone
//z=feval(x,y,f);plot3d(x,y,z);

//2)paraboloide 
deff("z=f(x,y)","z=h*(1-(x*x+y*y)/(R*R))");
z=feval(x,y,f);plot3d(x,y,z);




//3)3. Encore plus réaliste : surface minimale (forme caténaire) 
r=sqrt(x*x+y*y);
deff("z=f(x,y)","z=h*(cosh(r/a)-1)/(cosh(R/a)-1)");
z=feval(x,y,f);plot3d(x,y,z);

function z=f(x,y)
    z=1-x^2-y^2
endfunction

R=linspace(0,.1,4);
X=[]; x=1;

for r=R
   // [x,err]=fsolve()
end



//manual od fsolve
// Draw a circle of radius 1 according to its cartesian equation:
plotimplicit "x^2 + y^2 = 1"

xgrid(color("grey"),1,7)
isoview

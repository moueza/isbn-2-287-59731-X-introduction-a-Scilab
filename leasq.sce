function y=yth(t, x)
   y  = x(1)*exp(-x(2)*t)
endfunction

// we have the m measures (ti, yi):
m = 10;

//tm = [0.25, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25, 2.5]';
xm = [0,1,0,1]';
//ym = [0.79, 0.59, 0.47, 0.36, 0.29, 0.23, 0.17, 0.15, 0.12, 0.08]';
ym = [0,1,1,0]';

zm = [0,1,.5,.5]';

// measure weights (here all equal to 1...)
//wm = ones(m,1);

// and we want to find the parameters x such that the model fits the given
// data in the least square sense:
//
//  minimize  f(x) = sum_i  wm(i)^2 ( yth(tm(i),x) - ym(i) )^2
// z(x,y)= a*x+b*y
// initial parameters guess
x0 = [1.5 ; 0.8];//= a0 b0

// in the first examples, we define the function fun and dfun
// in scilab language
function e=myfun(x,y, xm, ym, zm)
   // e = wm.*( yth(tm, x) - ym )
   // e = a*x+b*y
    e = x0(1)*x+x0(2)*y
endfunction

 
// now we could call leastsq:

// 1- the simplest call
[f,xopt, gopt] = leastsq(list(myfun,tm,ym,wm),x0)

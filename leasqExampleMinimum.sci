clear
clc
function y=yth(t, x)
   y  = x(1)*exp(-x(2)*t)
endfunction
// initial parameters guess
x0 = [1.5 ; 0.8];
//////////
disp('yth',yth(0, x0))



// we have the m measures (ti, yi):
m = 10;
tm = [0.25, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25, 2.5]';
ym = [0.79, 0.59, 0.47, 0.36, 0.29, 0.23, 0.17, 0.15, 0.12, 0.08]';
// measure weights (here all equal to 1...)
wm = ones(m,1);

// and we want to find the parameters x such that the model fits the given
// data in the least square sense:
//
//  minimize  f(x) = sum_i  wm(i)^2 ( yth(tm(i),x) - ym(i) )^2

// initial parameters guess
x0 = x0; //just for didactic,respectful order

// in the first examples, we define the function fun and dfun
// in scilab language
function e=myfun(x, tm, ym, wm)
   e = wm.*( yth(tm, x) - ym )// Vectorized //WHERE IS SUM ? Embedded in leastsq
endfunction
//////
disp('myfun',myfun(tm, tm, ym, wm))

 

// now we could call leastsq:

// 1- the simplest call
[f,xopt, gopt] = leastsq(list(myfun,tm,ym,wm),x0)





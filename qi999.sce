clf
// 1) With a function in Scilab language (macro)
function z=xx(t,freq)
   // z = cos(freq*t.);
    z = cos(freq*t);
endfunction

//https://en.wikipedia.org/wiki/Normal_distribution
function y=f(x)
    moy=100; ecart=15;
    y = (1/(ecart*sqrt(2*%pi)))*exp(-.5*((x-moy)/ecart)^2);
endfunction



function y=dist(x)
    moy=100; ecart=15;
    y = integrate('f(x)','x',-1000,x);
endfunction

function y=distInf(x)
    moy=100; ecart=15;
    y = integrate('f(x)','x',-%inf,x);//cdfnor
endfunction


function y=distInf(x)
    moy=100; ecart=15;
    y = intg(-1000,120,'f(x)');
endfunction
x=linspace(50,150,100);

plot2d(x,f(x));


plot2d(x,dist(x));

p=99.9/100;
X=cdfnor("X",100,15,99.9/100,1-p);
X

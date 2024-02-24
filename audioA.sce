clf
// 1) With a function in Scilab language (macro)
function z=xx(t,freq)
    //    z = cos(freq*t.);
    z = cos(freq*t);
endfunction

function z=yy(t)
    z = sin(t);
endfunction

x=linspace(50,150,100);
moy=100; ecart=15;
plot2d(x,exp(x));



//loadwave
// At first we create a time vector of 0.5 seconds sampled at 22050 Hz:
t = 0 : 1/22050 : 0.5*(1-%eps);

// Then we generate the sound: a two channels sound.
s=[sin(2*%pi*440*t);sin(2*%pi*350*t)];
savewave('foo.wav',s);
s1=loadwave('foo.wav');
//max(abs(s1-s))
sound(s1)


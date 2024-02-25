clf
// 1) With a function in Scilab language (macro)
function z=xx(t)
    z = cos(t.);
endfunction

function z=yy(t)
    z = sin(y);
endfunction

function z=zz(t)
    z = t;
endfunction

//TODO X,Y SHIFT
// 1)
//DESSUS
t = 0:0.1:5*%pi;
r = (max(t)-t)/10;
XX(t)=r.*cos(t);
YY(t)=r.*sin(t);
ZZ(t)=t;
clf
param3d(XX(t),YY(t) ,ZZ(t), 30, 72,"X@Y@Z",[4,4])

curve = gce();
curve.mark_mode = "on";
curve.mark_style = 10;
curve.mark_foreground = color("magenta");
 


// 2) With a native Scilab builtin
//RIEN ou trait diagonal
  
// 3) With a native Scilab builtin
//FACE

// 4) 
//VUE DE DROITE
  

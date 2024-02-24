//cf p96
clf
// 1) With a function in Scilab language (macro) NOTATION POINTEE
function z=F(x, y)
    z = x.*(x.^2 + y.^2) - 5*(x.^2 - y.^2);
endfunction

// Draw the curve in the [-3 6] x [-5 5] range
subplot(1,2,1)
plotimplicit(F, -3:0.1:6, -5:0.1:5)

title("$\text{macro:  }x.(x^2 + y^2) - 5(x^2 - y^2) = 0$", "fontsize",4)
xgrid(color("grey"),1,7)

// 2) With a native Scilab builtin
subplot(1,2,2)
plotimplicit(besselj, -15:0.1:15, 0.1:0.1:19.9)

title("$\text{built-in:  } besselj(x,y) = 0$", "fontsize",4)
xgrid(color("grey"),1,7)

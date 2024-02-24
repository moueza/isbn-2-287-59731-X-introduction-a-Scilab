
t = 0:0.1:5*%pi;
r = (max(t)-t)/10;

clf
param3d(r.*sin(t), r.*cos(t), t/10, 30, 72,"X@Y@Z",[4,4])

curve = gce();
curve.mark_mode = "on";
curve.mark_style = 10;
curve.mark_foreground = color("magenta");
//vs plot3 = mesh
//ombre ... infographie

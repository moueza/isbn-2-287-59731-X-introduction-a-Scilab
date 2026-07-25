clc
clf

//
Points2=[
[0 0 0]
[1 1 1]
[1 2 1]
[2 1 4]
]

function scattering3Dpointscloud(Points)
    dimm=size(Points)
    for i=1:dimm(1)
        //Xx= [Points(i,1);Points2(i,1)]
        Xx= Points(i,1)
        Yy= Points(i,2)
        Zz= Points(i,3)
        //param3d(X',Y',Z')
        curv=param3d(Xx,Yy,Zz)
        //e=gce()
        //p=e.children(1)
        //p.line_mode = "off"
        curv.line_mode = "off"
        //p.mark_mode = "on"
        curv.mark_mode="on"
        //p.mark_style = 9// bullet
        curv.mark_style = 9// bullet
        //p.mark_size = 4
        curv.mark_size = 4
        curv.mark_foreground = color("magenta");
        curv.mark_background = color("magenta");
    end
endfunction  

scattering3Dpointscloud(Points)

//density distribution
function [Points]=scaterring3DnormalDistribution(averagee,stdDevv)
 
   
endfunction  
averagee1=100; stdDevv1=15
Points3=scaterring3DnormalDistribution(averagee1,stdDevv1)

//orbitals

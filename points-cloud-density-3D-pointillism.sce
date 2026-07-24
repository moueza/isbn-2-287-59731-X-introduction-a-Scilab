clc
clf

//
Points=[
[0 0 0]
[1 1 1]
[1 2 1]
[2 1 4]
]

Points2=Points
Points2(:,1)=Points(:,1)+.01
disp("Points : ",Points)

//X=[Points(:,1) Points2(:,1) ]
X=Points(:,1)  

//Y=[Points(:,2) Points2(:,2) ]
Y=Points(:,2)  

//Z=[Points(:,3) Points2(:,3) ]
Z=Points(:,3) 

//param3d(X,Y,Z)

X=Points2(:,1)  

//Y=[Points(:,2) Points2(:,2) ]
Y=Points2(:,2)  

//Z=[Points(:,3) Points2(:,3) ]
Z=Points2(:,3) 

//param3d(X,Y,Z)





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

end

L=[
[1,1,1];
[2,2,2];
[3,3,3];
]



appuye = %f;
i=0;
while ~ appuye | i<=2,
    //[b,xc,yc]=xclick();
    disp(i)
    
    texte=x_dialog(["Quel est votre age ?"],"-1");
    age=evstr(texte);
    augm=age+1;// not if empty string
    disp("Age = ",age)
    disp("Augm = ",augm)
    if age ~= "" then appuye = %t ;end
    
    i=i+1;
end

//serpent p160

////GUI
//TK_EvalStr

//anim 101

//seteventhandler 

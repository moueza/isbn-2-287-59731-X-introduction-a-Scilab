clc
close();//clf() //dans Scilab 2025, clf() supprime les figures et cree une figure vierge. Moi je veux que ca supprime les figures et ne cree pas de figure vierge.

//Écris-moi en Scilab (version 2025) une fonction [R,G,B] = color(nm) qui retourne les composantes RGB correspondant à une longueur d'onde nm exprimée en nanomètres. Je veux que les résultats soient sur l'échelle 0-255, et que la conversion respecte la correspondance physique entre longueur d'onde et couleur visible.
//TODO vectorize
function [R, G, B] = colorr(nm)
    //380-780
    if nm >= 380 & nm < 440 then
        R = (440 - nm) / (440 - 380);
        G = 0;
        B = 1;
    elseif nm >= 440 & nm < 490 then
        R = 0;
        G = (nm - 440) / (490 - 440);
        B = 1;
    elseif nm >= 490 & nm < 510 then
        R = 0;
        G = 1;
        B = (510 - nm) / (510 - 490);
    elseif nm >= 510 & nm < 580 then
        R = (nm - 510) / (580 - 510);
        G = 1;
        B = 0;
    elseif nm >= 580 & nm < 645 then
        R = 1;
        G = (645 - nm) / (645 - 580);
        B = 0;
    elseif nm >= 645 & nm <= 780 then
        R = 1;
        G = 0;
        B = 0;
    else
        R = 0;
        G = 0;
        B = 0;
    end

    // Correction de l'intensité
    if nm >= 380 & nm < 420 then
        factor = 0.3 + 0.7 * (nm - 380) / (420 - 380);
    elseif nm >= 420 & nm < 701 then
        factor = 1;
    elseif nm >= 701 & nm <= 780 then
        factor = 0.3 + 0.7 * (780 - nm) / (780 - 700);
    else
        factor = 0;
    end

    R = R * factor;
    G = G * factor;
    B = B * factor;

    // Mise à l'échelle sur 0-255
    R = round(R * 255);
    G = round(G * 255);
    B = round(B * 255);
endfunction



[R, G, B]=colorr(500)
disp("RGB=",[R, G, B])




//quel est le code pour la fonction reciproque RGB->nm
//...Donne-moi le code Scilab 2025 d'une fonction réciproque à celle qui convertit une longueur d'onde nm en RGB, c'est-à-dire une fonction qui prend en entrée un triplet RGB (sur 0-255) et retourne l'estimation de la longueur d'onde nm correspondante.
function nm = color_inv(R_target, G_target, B_target)
    min_dist = %inf;
    nm_best = -1;

    for nm_candidate = 380:1:780
        [R, G, B] = color(nm_candidate);
        dist = sqrt((R - R_target)^2 + (G - G_target)^2 + (B - B_target)^2);
        if dist < min_dist then
            min_dist = dist;
            nm_best = nm_candidate;
        end
    end

    nm = nm_best;
endfunction
disp('nm=',  color_inv(0, 255, 127))














// Définir couleur RGB 0-255
R = 120; G = 200; B = 150;

// Créer image 50x100 pixels
//img = zeros(50, 100, 3);
//img(:,:,1) = R / 255;
//img(:,:,2) = G / 255;
//img(:,:,3) = B / 255;

// Sauvegarder l'image dans un fichier PNG
//imwrite(img, "rectangle_rgb.png"); //OK

// Message de confirmation
disp("Image rectangle_rgb.png créée dans le dossier courant");






//color norm ... RGB
x=[0 1 2]
y=[0 1 5]
sizee=size(x)(2)
//z=[0 1 10]
//x1=x(1:2)
//x2=x(2:$)
//y1=y(1:2)
//y2=y(2:$)

//plot2d(x,y,z)
//plot2d(x,y,style=addcolor([1 0 0]))//p86
//deff("r=rouge()","r=addcolor([1 0 0])")
//deff("r=rouge","r=addcolor([1 0 0])")
//plot2d(x1,y1,style=addcolor([1 0 0]))
//plot2d(x2,y2,style=addcolor([0  1 0]))


intervLargeur=780-380
nmFrom=380
//normsNMvec=0:.0999:1 //380-780 
//normsNMvec=linspace(0,1,sizee) //n values
normsENERGYvec=linspace(1,01,sizee) //n values
normm2nm60percents=nmFrom+.6*intervLargeur
disp("normm2nm60percents=",normm2nm60percents)

normm2nm100percents=nmFrom+1.*intervLargeur
disp("normm2nm100percents=",normm2nm100percents)


normm3nmVec=nmFrom+ normsENERGYvec  * intervLargeur
disp("normm3nmVec=",normm3nmVec)



nm2RGBVec=[]
RGBs=[]
for indexx=1:(sizee-1)
    disp("indexx=",indexx)
    nm2RGBVec(1,$+1)=normm3nmVec(indexx)//++++ add line
    [R,G,B]=colorr(normm3nmVec(indexx))
    M=[R,G,B]
    RGBs(indexx,1:3)=M//no  RGBs(1,indexx)=M
    disp("nm2RGBVec=",nm2RGBVec)
    //plot2d(x(indexx),y(indexx),style=addcolor(RGBs(indexx,:)/255))
    //plot2d([x(indexx),x(indexx+1)],[y(indexx),y(indexx+1)],style=addcolor([1 0 0]))//OK
    plot2d([x(indexx),x(indexx+1)],[y(indexx),y(indexx+1)],style=addcolor(RGBs(indexx,:)/255))
end    
disp("nm2RGBVec",nm2RGBVec)
disp("RGBs=",RGBs)
//Why no red at start ? Trace RGB = 77 0 77 which is not 77 0 0 ... BECAUSE WE START FROM MIN OF NM = MAX OF ENERGY, NOT MIN OF ENERGY ... cf [R, G, B]= colorr(780) -> R=77 G=0 B=0 CQFD
//Why finish is yellow and not purple ? Because 2nd line is for dots 2 of 3 ~ middle of range ~ yallow

clc
//clf

//Écris-moi en Scilab (version 2025) une fonction [R,G,B] = color(nm) qui retourne les composantes RGB correspondant à une longueur d'onde nm exprimée en nanomètres. Je veux que les résultats soient sur l'échelle 0-255, et que la conversion respecte la correspondance physique entre longueur d'onde et couleur visible.
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

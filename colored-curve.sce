clc
clffunction [R, G, B] = color(nm)
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




[R, G, B] = color(500)
disp(R, G, B)

clc
Image1=[[1 2 3];[4 5 6]]
disp("Image1",Image1)

Image2=10*Image1
Image2(1,2)=2
disp("Image2:",Image2)

Image3=Image1
Image3(1,2)=2
disp("Image3:",Image3)

VIDEO(:,:,1)=Image1
VIDEO(:,:,2)= Image2
VIDEO(:,:,3)= Image3
disp("VIDEO:",VIDEO)

//VIDEO (3-Dim) ,StillImage (Mat)) 


//TODO vectorize + paralellize
function [StillImage]=still_image(VIDEO,repeatsConsecutiveForStill)
    //Scilab blue book p142
    //this type of function p150
    //StillImage=[[1 2 3];[4 5 6]]
    depthSize=size(VIDEO)(1,3)//3rd dim
    row=1
    while(row<=2);  
        col=1  
        while(col<=3);
            depth=1
            while(depth<=depthSize);
                repeats=0
                found=VIDEO(row,col,1)//because for image : 0..255 >0
                disp("found1 : ",found)
                depth=1;
                disp("depthSize vector :",VIDEO(row,col,1:depthSize));
                while(depth<=depthSize); 
                    if found==VIDEO(row,col,depth)then
                        if ( repeats==repeatsConsecutiveForStill )then
                            StillImage(row,col)=found
                            disp("found2 : ",found)
                            disp("StillImage2 : ",StillImage)
                            depth=depthSize;//endloop because reached
                        else
                        end
                        repeats=repeats+1;
                    else
                        found=VIDEO(row,col,depth)
                        disp("found3 : ",found)
                        //disp("StillImage3 : ",StillImage)
                        repeats=0
                    end

                    depth=depth+1;
                end
            end
            col=col+1
        end 
        row=row+1     
    end
    disp("StillImageEnd=",StillImage)
endfunction
[SI]=still_image(VIDEO,2)
disp("SI:",SI)

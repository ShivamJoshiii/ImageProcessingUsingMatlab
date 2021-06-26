function [BI] = MyBlur(I)

[R,C,D] = size(I);
if (D==1)
    sh = zeros(R,C);

for i = 1:4:R
    for j = 1:4:C
        Shiv_Average = uint8(mean2(I(i:i+3,j:j+3)));
        sh(i:i+3,j:j+3) = Shiv_Average;
    end
end
    BI = sh;

else
    
I = im2double(I);    
RED = I(:,:,1);
GREEN = I(:,:,2);
BLUE = I(:,:,3);

BI1 = zeros(R,C);
BI2 = zeros(R,C);
BI3 = zeros(R,C);
    
for i = 1:4:R
    for j = 1:4:C
        BI1(i:i+3,j:j+3) = (mean2(RED(i:i+3,j:j+3)));
        BI2(i:i+3,j:j+3) = (mean2(GREEN(i:i+3,j:j+3)));
        BI3(i:i+3,j:j+3) = (mean2(BLUE(i:i+3,j:j+3)));
    end
end

BI = cat(3,BI1,BI2,BI3);
end
end
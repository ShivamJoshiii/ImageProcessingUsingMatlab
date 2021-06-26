A = imread("peppers.bmp");
[R,C,D] = size(A);

RED = A(:,:,1);
GREEN = A(:,:,2);
BLUE = A(:,:,3);

Zelo = zeros(R,C,D);
Zelo1 = zeros(R,C,D);
Zelo2 = zeros(R,C,D);

for i = 1:4:R
    for j = 1:4:C
        Zelo(i:i+3,j:j+3) = uint8(mean2(RED(i:i+3,j:j+3)));
        Zelo1(i:i+3,j:j+3) = uint8(mean2(GREEN(i:i+3,j:j+3)));
        Zelo2(i:i+3,j:j+3) = uint8(mean2(BLUE(i:i+3,j:j+3)));
    end
end

ZELO_Color = cat(3,Zelo,Zelo1,Zelo2);
imshow(ZELO_Color,[]) 



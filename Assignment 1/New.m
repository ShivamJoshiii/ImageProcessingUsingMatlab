A = imread("peppers.bmp");
B = im2gray(A);

[R,C,D] = size(B);
Zelo = zeros(R,C,D);

for i = 1:4:R
    for j = 1:4:C
        Shiv_Average = uint8(mean2(B(i:i+3,j:j+3)));
        Zelo(i:i+3,j:j+3) = Shiv_Average;
    end
end

figure,imshow(Zelo,[]) 
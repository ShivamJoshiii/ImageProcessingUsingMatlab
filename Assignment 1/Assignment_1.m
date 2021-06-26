A = imread('peppers.bmp');
figure,imshow(A);
title("Original RGB color Image");    

disp('-----Done for Question 1-----');
pause;

B = rgb2gray(A);
TB = permute(B, [2 1 3]);
VB = flipud(B);
HB = fliplr(B);

figure;
subplot(2,2,1), imshow(B);
title("B");
subplot(2,2,2), imshow(TB);
title("TB");
subplot(2,2,3), imshow(VB);
title("VB");
subplot(2,2,4), imshow(HB);
title("HB");

Mean_B = mean2(B(:))
Max_B = max(B(:));
Min_B = min(B(:));
Median_B = median(B(:));

fprintf('Maximum Intensity Value - %d\n', Max_B);
fprintf('Minimum Intensity Value - %d\n', Min_B);
fprintf('Mean Intensity Value - %f\n', Mean_B);
fprintf('Median Intensity Value - %d\n', Median_B);

disp('-----Done for Question 2-----');
pause;

C = im2double(B);
D = mat2gray(C);
    
figure,imshow(D);

disp('-----Done for Question 3-----');
pause;

% threshold 
threshold = 0.4;

image = im2double(D);
E=image;
E(E<0.4)=0;
E(E>0.4)=1;
image_thresholded=E;  

bw1 = image_thresholded;
%figure,imshow(bw1);

bw2 = im2bw(D,0.4);

figure;
subplot(1,2,1), imshow(bw1);
title("My method bw1");
subplot(1,2,2), imshow(bw2);
title("Matlab method bw2");

if bw1==bw2
    disp('bw1 and bw2 are the same');
else
    disp('bw1 and bw2 are not the same');
end

disp('-----Done for Question 4-----');


pause;

A2 = MyBlur(A);
B2 = MyBlur(B);

figure;
subplot(2,2,1), imshow(A);
title("A");
subplot(2,2,2), imshow(B);
title("B");
subplot(2,2,3), imshow(A2,[]);
title("A2");
subplot(2,2,4), imshow(B2,[]);
title("B2");

pause;
disp('-----Done for Question 5-----');




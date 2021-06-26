%%
Im = imread('Food.jpg');
%imshow(A);
vec = min(min(Im)):max(max(Im));
newMin = input('first range = ');
newMax = input('second range = ');
range = [newMin,newMax];

[scaledIm , transfunc] = Mapping(Im,range);

figure;
subplot(1,2,1), imshow(Im);
title("Original Image");
subplot(1,2,2), imshow(scaledIm);
title("Scaled Image");

disp('Finish Solving Problem 1');
pause;
%%
im_Cicuit = imread('Circuit.jpg');
mask_three = (1/9.*ones(3,3));
%mask_three = [3,3];
mask_five = (1/25.*ones(5,5));
%mask_five = [5,5];

Three = AverageFiltering(im_Cicuit,mask_three);
Five = AverageFiltering(im_Cicuit,mask_five);

figure;
subplot(1,3,1), imshow(im_Cicuit);
title("Original Circuit Image");
subplot(1,3,2), imshow(Three);
title("Average Filter Circuit 3x3 Image");
subplot(1,3,3), imshow(Five);
title("Average Filter Circuit 5x5 Image");

disp('Finish Solving Problem 2');
pause;
%%
im_Cicuit_q3 = imread('Circuit.jpg');

mask_three = (1/9.*ones(3,3));
mask_five = (1/25.*ones(5,5));

Three_q3 = MedianFiltering(im_Cicuit_q3,mask_three);
Five_q3 = MedianFiltering(im_Cicuit_q3,mask_five);
figure;
subplot(1,3,1), imshow(im_Cicuit_q3);
title("Original Circuit Image");
subplot(1,3,2), imshow(Three_q3);
title("MedianFiltering Circuit 3x3 Image");
subplot(1,3,3), imshow(Five_q3);
title("MedianFiltering Circuit 5x5 Image");

disp('Finish Solving Problem 3');
pause;
%%
Moon = imread('Moon.jpg');
lap = [1 1 1; 1 -8 1; 1 1 1];
Scaled_Laplacian_filtered_image = imfilter(double(Moon), lap, 'conv');
Filtered_image = imfilter(Moon,lap,'conv');
maxR = max(Scaled_Laplacian_filtered_image(:));
minR = min(Scaled_Laplacian_filtered_image(:));
Scaled_Laplacian_filtered_image = (Scaled_Laplacian_filtered_image - minR) / (maxR - minR);
Enhanced_image = double(Moon) + Scaled_Laplacian_filtered_image;
minA = min(Enhanced_image(:)); maxA = max(Enhanced_image(:));
Enhanced_image = Moon - Filtered_image;

figure, 
subplot(2,2,1);imshow(Moon);
title('Original image');
subplot(2,2,2);imshow(Filtered_image);
title('Filtered image');
subplot(2,2,3);imshow(Scaled_Laplacian_filtered_image); 
title('Scaled Laplacian filtered image');
subplot(2,2,4);imshow(Enhanced_image); 
title('Enhanced Image');

disp('Finish Solving Problem 4');
pause;
%%
disp('Completed');





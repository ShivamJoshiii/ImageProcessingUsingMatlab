%% MANISH KUMAR SHARMA,cdac-noida,2010

%% median filter on image with salt & pepper noise %%
I = imread('Circuit.jpg');
Z = imnoise(I,'salt & pepper',0.02);   % adding Noise
a = double(Z);
b = a;
[row , col] = size(a);
for x = 2:1:row-1
    for y = 2:1:col-1
%% To make a 3x3 mask into a 1x9 mask
a1 = [a(x-1,y-1) a(x-1,y) a(x-1,y+1) a(x,y-1) a(x,y) a(x,y+1)...
    a(x+1,y-1) a(x+1,y) a(x+1,y+1)];
a2 = sort(a1);
med = a2(5); % the 5th value is the median 
b(x,y) = med;
    end 

end
figure(1); imshow(uint8(Z))
figure(2); imshow(uint8(b))
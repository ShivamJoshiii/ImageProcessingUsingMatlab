%% Question 1 - SOLUTION
%READ A RGB IMAGE
A = imread('soccer.jpg');
K = 6; %Number of Cluster
[cluster_map, center, dist] = MYKMEANS(A, K); 
%display(center);
display(dist);
figure;
subplot(1,2,1);
imshow(A);
title("ORIGINAL IMAGE");
subplot(1,2,2);
imshow(cluster_map,colormap(lines));
title("Final Image When Cluster=6");
%% Question 2 - SOLUTION
A = imread('soccer.jpg');
Rcomp = A(:,:,1); %RED CHANNEL
Gcomp = A(:,:,2); %GREEN CHANNEL
Bcomp = A(:,:,3); %BLUE CHANNEL
data = double([Rcomp(:),Gcomp(:),Bcomp(:)]);
[m,n] = kmeans(data,6);
m = reshape(m,size(A,1),size(A,2));
figure;
subplot(1,2,1), imshow(A);
title("Original Image");
subplot(1,2,2), imshow(m,colormap(lines));
title("Kmeans 6");
%% Question 3 - SOLUTION - BONUS POINT
%READ A RGB IMAGE
A = imread('soccer.jpg');
K = 2; %Number of Cluster
[cluster_map, center, dist] = MYKMEANS(A, K); 
cluster_two = cluster_map;
x = mean(dist);
fprintf("For soccer.jpg, dist is * when K=2  %f \n", x);
K = 3; %Number of Cluster
[cluster_map, center, dist] = MYKMEANS(A, K); 
cluster_three = cluster_map;
x2 = mean(dist);
fprintf("For soccer.jpg, dist is * when K=3 %f \n", x2);
K = 4; %Number of Cluster
[cluster_map, center, dist] = MYKMEANS(A, K); 
cluster_four = cluster_map;
x3 = mean(dist);
fprintf("For soccer.jpg, dist is * when K=4 %f \n", x3);
K = 5; %Number of Cluster
[cluster_map, center, dist] = MYKMEANS(A, K); 
cluster_five = cluster_map;
x4 = mean(dist);
fprintf("For soccer.jpg, dist is * when K=5 %f \n", x4);
K = 6; %Number of Cluster
[cluster_map, center, dist] = MYKMEANS(A, K); 
cluster_six = cluster_map;
x5 = mean(dist);
fprintf("For soccer.jpg, dist is * when K=6 %f \n", x5);
K = 7; %Number of Cluster
[cluster_map, center, dist] = MYKMEANS(A, K); 
cluster_seven = cluster_map;
x6 = mean(dist);
fprintf("For soccer.jpg, dist is * when K=7 %f \n", x6);
K = 8; %Number of Cluster
[cluster_map, center, dist] = MYKMEANS(A, K); 
cluster_eight = cluster_map;
x7 = mean(dist);
fprintf("For soccer.jpg, dist is * when K=8 %f \n", x7);
K = 9; %Number of Cluster
[cluster_map, center, dist] = MYKMEANS(A, K); 
cluster_nine = cluster_map;
x8 = mean(dist);
fprintf("For soccer.jpg, dist is * when K=9 %f \n", x8);
K = 10; %Number of Cluster
[cluster_map, center, dist] = MYKMEANS(A, K); 
cluster_ten = cluster_map;
x9 = mean(dist);
fprintf("For soccer.jpg, dist is * when K=10 %f \n", x9);

final = [x,x2,x3,x4,x5,x6,x7,x8,x9];
fprintf("----------------------------------------------------------------------- \n");
s1 = find(final == min(final));
fprintf("For soccer.jpg, optimal minimum dist is when K=%d \n", s1+1);
figure;
subplot(2,5,1);
imshow(A);
title("ORIGINAL IMAGE");
subplot(2,5,2);
imshow(cluster_two,colormap(lines));
title("Final Image When Cluster=2");
subplot(2,5,3);
imshow(cluster_three,colormap(lines));
title("Final Image When Cluster=3");
subplot(2,5,4);
imshow(cluster_four,colormap(lines));
title("Final Image When Cluster=4");
subplot(2,5,5);
imshow(cluster_five,colormap(lines));
title("Final Image When Cluster=5");
subplot(2,5,6);
imshow(cluster_six,colormap(lines));
title("Final Image When Cluster=6");
subplot(2,5,7);
imshow(cluster_seven,colormap(lines));
title("Final Image When Cluster=7");
subplot(2,5,8);
imshow(cluster_eight,colormap(lines));
title("Final Image When Cluster=8");
subplot(2,5,9);
imshow(cluster_nine,colormap(lines));
title("Final Image When Cluster=9");
subplot(2,5,10);
imshow(cluster_ten,colormap(lines));
title("Final Image When Cluster=10");

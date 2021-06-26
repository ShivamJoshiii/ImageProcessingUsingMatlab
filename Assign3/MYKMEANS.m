function[cluster_map, center, dist] = MYKMEANS(inputIm, K)
data = ( reshape(inputIm,[ size(inputIm,1)*size(inputIm,2), 3]) );
iteration = 6;
if exist('Centre','Var')
    clear Centre;
end
for i = 1 : K
    Centre(i,:) = randi([0 255],1,3);
end
imseg = zeros (size(inputIm,1),size(inputIm,2));
p2 = imseg;
for i = 1:iteration
    clear Dist;
    Dist =  pdist2(double(data),Centre);    
    [~ , ClusterNumber] = min(Dist,[],2);          
    for j = 1 : K
        ClusterAssignments = find(ClusterNumber == j) ;
        if gather(ClusterAssignments)
            Centre(j,:) = mean( gather(data( ClusterAssignments,:)) );
        end
    end
    for k=1:max( gather(ClusterNumber) )
        imseg( gather(ClusterNumber) ==k)=k;
    end
    p2 = imseg;
end
Final_distance = mean2(Dist);
cluster_map = p2;
center = Centre;
dist = Final_distance;
end
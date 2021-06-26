
function [filteredIm] = AverageFiltering(im, mask)
%disp(mask(1));

%im = imread('Circuit.jpg');
[row_1,col_1] = size(mask);
[row,col] = size(mask);

[m,n] = size(im);



if row~=col
    disp('Mask is not right');
end

if (mod(row,2)==0||mod(col,2)==0)
    disp('Mask should be of odd number');
end

if row == 3
        
    X = zeros(1,n);
    im = [im;X];im = [X;im];[m,n] = size(im);X = zeros(m,1);im = [im X];im = [X im];
    [m,n] = size(im);
    %[row_o,col_o] = size(im);
    
    for i=2:m-1
        
        for j=2:n-1
            
            x = im(i-1:i+1,j-1:j+1);
            
            C = x(:)';
            c = sort(C);
            
            ave = sum(c)/9;
            
            sh(i-1,j-1) = ave;
            
            %b(i,j) = sh;
            
        end
    end

    filteredIm = uint8(sh);
    
end

if row == 5
    
    X = zeros(2,n);
    im = [im;X];im = [X;im];[m,n] = size(im);X = zeros(m,2);im = [im X];im = [X im];
    [m,n] = size(im);
    
    %[row_o,col_o] = size(im);
    for i=3:m-2
        
        for j=3:n-2
            
            x = im(i-2:i+2,j-2:j+2);
            
            C = x(:)';
            c = sort(C);
            
            ave = sum(c)/25;
            
            sh(i-2,j-2) = ave;
            
            
        end
    end

    filteredIm = uint8(sh);
    
end


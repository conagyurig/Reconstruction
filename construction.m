clear all 
close all
A = importdata('nodespoint');
A = A/40.3
A = A*1000
A = uint8(A)

data = zeros(32);
nums = size(A);
for i = 1:nums(1);
    data(A(i,1)+1,A(i,2)+1) = 1;
end
figure
imshow(data)
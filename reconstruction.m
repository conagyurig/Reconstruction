clear all 
close all
A = importdata('zone1');
data = zeros(32);
nums = size(A);
for i = 1:nums(1)
    if A(i,5) ~= 0
        sumx = 1;
        sumy = 1;
        if A(i,1) == 1
            sumx = sumx + 0;
            sumy = sumy + 0;
        end
        if A(i,1) == 2
            sumx = sumx + 16;
        end
        if A(i,1) == 3
            sumy = sumy + 16;
        end
        if A(i,1) == 4
            sumx = sumx + 16;
            sumy = sumy + 16;
        end

        if A(i,2) == 1
            sumx = sumx + 0;
            sumy = sumy + 0;
        end
        if A(i,2) == 2
            sumx = sumx + 8;
        end
        if A(i,2) == 3
            sumy = sumy + 8;
        end
        if A(i,2) == 4
            sumx = sumx + 8;
            sumy = sumy + 8;
        end

        if A(i,3) == 1
            sumx = sumx + 0;
            sumy = sumy + 0;
        end
        if A(i,3) == 2
            sumx = sumx + 4;
        end
        if A(i,3) == 3
            sumy = sumy + 4;
        end
        if A(i,3) == 4
            sumx = sumx + 4;
            sumy = sumy + 4;
        end

        if A(i,4) == 1
            sumx = sumx + 0;
            sumy = sumy + 0;
        end
        if A(i,4) == 2
            sumx = sumx + 2;
        end
        if A(i,4) == 3
            sumy = sumy + 2;
        end
        if A(i,4) == 4
            sumx = sumx + 2;
            sumy = sumy + 2;
        end

        if A(i,5) == 1
            sumx = sumx + 0;
            sumy = sumy + 0;
        end
        if A(i,5) == 2
            sumx = sumx + 1;
        end
        if A(i,5) == 3
            sumy = sumy + 1;
        end
        if A(i,5) == 4
            sumx = sumx + 1;
            sumy = sumy + 1;
        end
        data(sumx,sumy) = 1;
    end
end
figure;
imshow(data)
imsave(data)
save

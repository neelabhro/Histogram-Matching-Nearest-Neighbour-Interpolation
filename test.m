%Neelabhro Roy
%2016171
clear;
clc;

R = [2.4 3 3 3]
%R = round(R);
Z = [0 0.9 3 3]
%Z = round(Z);
M = [0 0 0 0];

%min = abs( Z(1)-R(1));

for i=1:4
    
    for j=1:3
        min = abs( Z(i)-R(i));
        if abs(Z(j) - R(i)) <= min
            %break
            min = abs(Z(j) - R(i));
            %break
            M(i) = j-1;
            %break;
        else if(Z(j)==R(i))
                M(i)=j-1;
                break;
            end
            
        end
       
    end
    
end
%M = M-1;
disp('The Matched Values without Rounding off are: ');
M





%%

%Neelabhro Roy
%2016171
clear;
clc;


I = [6,7;8,9];                          %Initializing the Input Matrix
[x1,y1] = size(I);

N2 = 2*x1;                              %Assigning the size of the new image, as it's being interpolated by a factor 2
M2 = 2*y1;
for x=1:N2                              %Rows in the output
    for y=1:M2                          %Columns in the output
        v = x/2;                        %Calculate position of output grid oordinates in input grid
        w = y/2;
                                        %Picking the nearest neighbor to (v,w), using a certain convention
        v = round(v);
        w = round(w);
        I2(x,y) = I(v,w);
    end
end

disp(I2);                               %For displaying the Output Matrix



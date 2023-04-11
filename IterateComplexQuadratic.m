%Programmer: Evan Hoflich
%Date: 14/09/2020
%Purpose: Applies a function calculation to a set value and repeats it
%until it is no longer within the bounded region of the absolute value of
%the function or the set maximum number of iterations have been reached

function count = IterateComplexQuadratic(start, increase, maxIterations)
count = 0; %starts the count at zero

%While the absolute value of the start is less than 3 or the while loop
%hasnt run the specified max amount of times
while abs(start) <3 && count < maxIterations 
    start = (start^2)+ increase;  %The function calculation is applied
    count = count + 1;            %The function is looped until one of the conditions have been met
end

%If the count is the same as the maximum iterations and the absolute of the
%start is less than 3
if count == maxIterations && abs(start) <3
    count = 0;                    %Set the count to zero
end
end

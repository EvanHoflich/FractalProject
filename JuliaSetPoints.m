%Programmer: Evan Hoflich
%Date: 15/09/2020
%Purpose: Determines weather or not an array of points in a grid of complex values
%is a member of the Julia set associated with a specified complex value


function points = JuliaSetPoints(inputArray, increase, maxIterations)
    [rows, columns] = size(inputArray);    %Find the number of rows and columns in the input array 
    points = zeros(rows, columns);         %Creates a grid of zeros the same height and width of the array given
    for r=1:rows                           %Repeats the function for every value in the array (row*column)
        for c=1:columns
            %Runs each array through the complex quadratic function and
            %places each number in the corresponding position in an array
            points(r,c) = (IterateComplexQuadratic(inputArray(r,c), increase, maxIterations));
        end
    end
end

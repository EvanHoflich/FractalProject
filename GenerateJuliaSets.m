%Programmer: Evan Hoflich
%Date: 16/09/2020
%Purpose: to Take a sequence of complex values and generate a corresponding
%sequence of Julia set images

function ImageArray = GenerateJuliaSets(cvalues, gridSize, colourMap)
    ImageArray = {};                     %Creates an empty cell array
    [rows, ~] = size(colourMap);         %Find how many rows are inside the colour map array
    grid = CreateComplexGrid(gridSize);  %Creates the grid using the createComplexGrid function
    
    %For every value in the array of complex values
    for i=1:length(cvalues)                                
        %Create a point using the JuliaSetPoint function to the same position as the corresponding complex value
        points = JuliaSetPoints(grid, cvalues(i),rows); 
        %Creates a fractal image with the ColourJulia function to the same
        %position as the corresponding complex value
        ImageArray{i} = ColourJulia(points, colourMap);
    end
end

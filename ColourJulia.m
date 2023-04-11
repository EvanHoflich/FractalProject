%Programmer: Evan Hoflich
%Date: 16/09/2020
%Purpose: Assigns points in an array an RGB colour value depending on its
%value

function fractalImage = ColourJulia(points, colourMap)

[rows, columns] = size(points);       %Find the number of rows and columns in the input array 
fractalImage = zeros(rows, columns);  %Creates a grid of zeros the same height and width of the array given
    
    
for c=1:columns                       %Repeats the function for every value in the array (row*column)
    for r=1:rows
        if points(r,c) ~= 0           %Colours every value besides zero
            %Assigns a red RGB value depending on position of the value "points" in the array of colour values
            fractalImage(r, c, 1) = colourMap(points(r,c), 1)*255; 
            %Assigns a green RGB value depending on position of the value "points" in the array of colour values
            fractalImage(r, c, 2) = colourMap(points(r,c), 2)*255;
            %Assigns a blue RGB value depending on position of the value "points" in the array of colour values
            fractalImage(r, c, 3) = colourMap(points(r,c), 3)*255;
        end
    end
end
    
fractalImage = uint8(fractalImage); %Converts a double array to an uint8 array


end

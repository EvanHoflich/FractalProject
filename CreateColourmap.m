%Programmer: Evan Hoflich
%Date: 16/09/2020
%Purpose: Create an RGB array of elements by evenly spacing a start and end
%value

function colourGrid = CreateColourmap(startingArray, endingArray, rows)

colourGrid = zeros(rows, 3);                              %Create an array of zeros, with three columns and the specified user row height

red = linspace(startingArray(1), endingArray(1), rows);   %Evenly spaced values depending on the users input for the red values
green = linspace(startingArray(2), endingArray(2), rows); %Evenly spaced values depending on the users input for the green values
blue = linspace(startingArray(3), endingArray(3), rows);  %Evenly spaced values depending on the users input for the blue values

for i=1:rows
    colourGrid(i,1) = red(i);    %Add every red value to the colour grid array
    colourGrid(i,2) = green(i);  %Add every green value to the colour grid array
    colourGrid(i,3) = blue(i);   %Add every blue value to the colour grid array
end
end

%Created By: Evan Hoflich
%Purpose: Create a complex number line
%Date: 14/09/2020
 
function newArray = CreateComplexGrid(gridSize)
    realArray = zeros(gridSize);                                       %Create a real element array of zeros
    imaginaryArray = zeros(gridSize);                                  %Create an imaginary array of zeros                  
    realArray = (realArray + linspace(-2, 2, gridSize));               %Adds values from 2 to -2 in steps of n to an array
    imaginaryArray = (imaginaryArray + linspace(-2i, 2i, gridSize)');  %Adds values from 2 to -2 in steps of n to an array
    newArray = (realArray + imaginaryArray);                           %Adds both real and complex array to a large array
end

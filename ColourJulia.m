function [colourImage] = ColourJulia(setPoints, colourMap)
% This function takes a set of points with values corresponding to the
% number of iterations of the f(z) function made before abs(z) >= 3. It
% colours these points in using a colour map and stores the image data in
% an array.

% Authored by Samuel Mason

% Pre-allocate the image data array size for efficiency.
[arrayWidth, arrayLength] = size(setPoints);
colourImage = zeros(arrayWidth, arrayLength, 3);

% This loop goes through and replaces colours in the array of the image
% data with ones corresponding to the value in setPoints at that index and
% according to the colour map specified.
for i = 1:arrayLength
    for j = 1:arrayWidth
        
        if setPoints(j, i) ~= 0
            colourImage(j, i, 1) = colourMap(setPoints(j, i), 1) * 255;
            colourImage(j, i, 2) = colourMap(setPoints(j, i), 2) * 255;
            colourImage(j, i, 3) = colourMap(setPoints(j, i), 3) * 255;
        end
        
    end
end

% Converts the image to an 8 bit unsigned integer so that it can be
% accurately displayed as an image.
colourImage = uint8(colourImage);

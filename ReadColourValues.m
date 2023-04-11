%Programmer: Evan Hoflich
%Date: 16/09/2020
%Purpose: Returns a list of names in a cell array and colour values in an
%array, from a specific text file

function [colourNames, colourValues] = ReadColourValues(fileName)
    fileID = fopen(fileName, 'r'); %Create a file ID and set permissions to read the file
    colourNames = {};              %Creates an empty call array for the colour names
    colourValues = zeros(1, 3);    %Creates a list of zeros for the colour values to be placed in, with three rows for its RGB values
    count = 0;                     %Count to see how many times the loop has run
    
    if fileID == -1                                          %If the file cannot be opened
        sprintf('Error opening file %s', fileName)           %Display error message with incorrect filename
    else
        line = fgetl(fileID);                                %Read the code line by line
        while (ischar(line))                                 %While the line contains characters run the loop
            count = count+1;                                 %Increase the count to see how many times the loop has run
            firstSpace = strfind(line, ' ');                 %Find the positioning of the first space
            colourNames{count, 1} = line(1:firstSpace(1)-1); %Adds everything before the first space to the colour name array 
            number = str2num(line(firstSpace+1:end));        %Adds everything from the first space to a variable called number
            colourValues(count, 1:3) = number;               %Adds the the three values to the corresponding element in the colorValue array
            line = fgetl(fileID);                            %Goes to the next line
        end
    end
end

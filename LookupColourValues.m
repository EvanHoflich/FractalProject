%Programmer: Evan Hoflich
%Date: 17/09/2020
%Purpose: Looks up a named colour from a list of provided colours and return the
%corresponding RGB values


function specifiedColour = LookupColourValues(choice, colours, values)
    index = find(strcmpi(colours, choice));    %Finds the position of the users colour choice from a list of provided colours
    if index > 0                               %If the program finds the colour, display its RGB values from the list of colours
        specifiedColour = values(index, 1:3);
    else
        fprintf(2, '%s\n', 'Colour Not Found') %If the program cannot find the colour, display colour not found
        specifiedColour = [0 0 0];             %Display that the RGB values are 0 0 0
    end
end

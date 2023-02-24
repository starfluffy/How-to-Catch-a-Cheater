function [outputCharactersArray] = StripString(inputString)
% This is a function that takes in a string (array of characters) and gets
% rid of unprintable characters (characters with an ASCII value outside of
% (33-126). It returns an array of characters that is the same as the input
% string except with the unprintable characters removed and all uppercaps
% characters turned into lowercaps.
% Input: a string (inputString)
% Output: an array of characters (outputCharactersArray)
% Author: Amanda Lowe, alow719, 2022

% creating an array that contains the ASCII values of the input string.
% Used for checking of the ASCII value is outside of 33-126 and for
% iterating through (its size won't change)
% initializing the variable offset as 0 (it will be used when stripping out
% unprintable characters to index the position of the character that will
% be stripped out.
inputStringDoubles = double(inputString); offset = 0;

% iterates through each element of inputStringDoubles if
% 33>inputStringDoubles(i)>126, then it will replace the character (in
% inputString) with ''. The off set is to account for the fact that
% inputString will decrease in size by one every time a character is
% stripped.
for i = 1:1:length(inputStringDoubles)
    if ((inputStringDoubles(i) < 33) || (inputStringDoubles(i) > 126))
        inputString(i-offset) = '';
        offset = offset + 1;
    end
end

%if the input string only has unprintable characters, return
% outputCharactersArray as a 0x0 empty array,
% else, return the string made in the for loop above in all lowercaps.
if isempty(inputString) == true
    outputCharactersArray = '';
    return
else
    outputCharactersArray = lower(inputString);
    return
end
end
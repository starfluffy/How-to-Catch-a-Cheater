function [outputCellArray] = Kgram(k, inputString)
% This is a function that takes in an integer 'k', and a string and divides
% it into a sequence of k-grams. Each element of the sequence is 'k'
% characters long.
% Inputs: 1)a positive integer greater than 0 (k).
% 2)A string (array of characters) (inputString).
% Output: 1xn cell array where each element is one of the k-grams
% (outputCellArray). If k is greater than the length of the input string,
% outputCellArray will be a 1x1 cell array containing the input string.
% Author: Amanda Lowe, alow719, 2022

% Initialize outputCellArray as an empty cell array
outputCellArray = {};

% if k is greater than the length of the input string, set outputCellArray
% to a 1x1 cell array containing the input string and return that value.
if k > length(inputString)
    outputCellArray = {inputString};
    return
end

% iterate from the first element of inputString to the last element where
% we can get 'k' characters from inputString(i) (including inputString(i)).
% Hence the length(inputString)-(k-1). For each iteration, set the i'th
% element of outputCellArray to be the i'th element of inputString plus
% (k-1) characters after it (since the k-gram has to contain the i'th
% element).
for i = 1:1:(length(inputString)-(k-1))
    outputCellArray{i} = inputString(i:(i+(k-1)));
end
end
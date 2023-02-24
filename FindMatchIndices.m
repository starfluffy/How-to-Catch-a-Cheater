function [matchIndicesArray] = FindMatchIndices(inputArray1, inputArray2)
% This is a function that takes in two arrays of integers and finds
% matching values between the two arrays. It will then return the index
% positions of the first array for the matching values.
% Inputs: two non-empty 1D arrays (inputArray1, inputArray2)
% Output: a 1D array containing the index positions (matchIndicesArray)
% Author: Amanda Lowe, alow719, 2022

%initializing matchIndicesArray as an empty array initially and the
%index that will be used everytime a number is added to
%matchIndicesArray as 1
matchIndicesArray = []; matchesIndex = 1;

%Using a nested for loop to iterate through each value of the two
%inpout arrays. If inputArray(i) is equal to inputArray(j), it will set
% matchIndicesArray(matchIndex) to i, which will be the index position
% of the value in inputArray1 that has matching values in inputArray2.
% It will then increment matchesIndex by 1.
for i = 1:1:length(inputArray1)
    for j = 1:1:length(inputArray2)
        if (inputArray1(i) == inputArray2(j))
            matchIndicesArray(matchesIndex) = i;
            matchesIndex = matchesIndex + 1;
            break
        end
    end
end
end
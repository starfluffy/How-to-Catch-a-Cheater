function [matchPositionsArray1, matchPositionsArray2] = FindMatchPositions(fingerprint1, fingerprint2)
% This is a function takes in two fingerprints (which are two 2xn arrays)
% and compares them to find which positions in fingerprint 1 have values
% that are also found in fingerprint 2 and viceversa.
% Inputs: two 2D 2xn arrays where each column contains a hash value and the
% corresponding position (fingerprint1, fingerprint2).
% Outputs: 1)a 1D row array containing a list of index positions in string 1
% of all values that are also found in string 2. (matchPositionsArray1).
% 2)a 1D row array containing a list of index positions in string 2
% of all values that are also found in string 1. (matchPositionsArray2).
% If no matches were found (for both fingerprints), an empty array is returned.
% Author: Amanda Lowe, alow719, 2022

% Calling the function FindMatchIndices with the first rows of the input
% fingerprints as the input and assigning the output to the variable
% matchIndices1.(fingerprint1 first, then fingerprint2)
matchIndices1 = FindMatchIndices(fingerprint1(1,:), fingerprint2(1,:));

% Initializing matchPositionsArray1 as an empty array
matchPositionsArray1 = [];

% Iterate through each element of matchIndices1. Each iteration, assign the
% i'th element of matchPositionsArray1 to be the 'matchIndeices1(i)'th
% element of the second row of fingerprint1
for i = 1:1:length(matchIndices1)
    matchPositionsArray1(i) = fingerprint1(2, matchIndices1(i));
end

% Calling the function FindMatchIndices with the first rows of the input
% fingerprints as the input and assigning the output to the variable
% matchIndices1. (fingerprint2 first, then fingerprint1)
matchIndices2 = FindMatchIndices(fingerprint2(1,:), fingerprint1(1,:));

% Initializing matchPositionsArray1 as an empty array
matchPositionsArray2 = [];

% Iterate through each element of matchIndices2. Each iteration, assign the
% i'th element of matchPositionsArray2 to be the 'matchIndeices2(i)'th
% element of the second row of fingerprint2
for i = 1:1:length(matchIndices2)
    matchPositionsArray2(i) = fingerprint2(2, matchIndices2(i));
end
end
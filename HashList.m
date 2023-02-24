function [hashesArray] = HashList(inputStringsCellArray)
% This is a function that takes in a cell array of strings and calculates
% the has value for each string using the function Hash31. It will store
% those hash values in an array and then return that array.
% Input: 1xn cell array of strings (inputStringsCellArray)
% Output: 1xn array containing the hash values for the corresponding
% elements of the input cell array (hashesArray)
% Author: Amanda Lowe, alow719, 2022

% Initializing hashesArray as an array of zeros
hashesArray = zeros(1,length(inputStringsCellArray));

% Iterate through each element of inputStringsCellArray and call the
% function Hash31 using the i'th element of inputStringsCellArray as the
% input argument. It will store the output of Hash31 into the i'th element
% of hashesArray.
for i = 1:1:length(inputStringsCellArray)
    hashesArray(i) = Hash31(inputStringsCellArray{i});
end
end
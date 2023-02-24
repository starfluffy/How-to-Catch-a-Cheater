function [minValue, minValuePosition] = RightMin(inputValuesArray)
% This is a function that takes in an array of values (integers) that
% returns the minimum value in the array and the right most position of
% that value in the array.
% Input: array of values (integers) (inputValuesArray)
% Outputs: 1)an integer representing the minimum value (minValue)
% 2)an integer representing the right most position of the
% minimum value (minValuePosition)
% Author: Amanda Lowe, alow719, 2022

% Using the inbuilt MATLAB function 'min' to get the minimum value of
% the input array
minValue = min(inputValuesArray);

% Starting from the LAST value of the input array and implmenting by -1
% each time (so going down from the alst value), if
% inputValuesArray(i) is equal to the minimum value, it will return
% what i is as this will be the right most position of the minimum
% value
for i = length(inputValuesArray):-1:1
    if (inputValuesArray(i) == minValue)
        minValuePosition = i;
        return
    end
end
end
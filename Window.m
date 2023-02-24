function [outputWindowsArray] = Window(w, inputIntegersArray)
% This is a funciton that takes in an integer, w, and a 1D array of
% integers. It will then use those integers values to create a 2D array of
% windows for a specified window size, w.
% Inputs: 1)a positive integer greater than 0 which is the window size (w).
% 2) a 1D array of integers
% Output: 2D array  integers where each row is a window containing 'w'
% integers (outputIntergersArray). If w is greater than the length of the
% input array, outputIntergersArray will just be the input array.
% Author: Amanda Lowe, alow719, 2022

% Initialize outputIntegersArray as an empty array
outputWindowsArray = [];

% If k is greater than the input array, it will set outputIntegersArray to
% be inputIntegersArray and return that array.
if w > length(inputIntegersArray)
    outputWindowsArray = inputIntegersArray;
    return
end

% iterate from the first element of inputIntegersArray to the last element
% where we can get 'w' integers from inputIntegersArray(i) (including
% inputIntegersArray(i)). Hence the length(inputIntegersArray)-(w-1). For
% each iteration, set the i'th element of outputIntegersArray to be the
% i'th element of inputIntegersArray plus (w-1) characters after it (since
% the window still has to contain the i'th integer).
for i = 1:1:(length(inputIntegersArray)-(w-1))
    outputWindowsArray(i,1:w) = inputIntegersArray(i:(i+(w-1)));
end
end
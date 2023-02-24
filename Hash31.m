function [h] = Hash31(inputArray)
% this is a function that takes in a string or array or integers. If it is
% a string, it will convert it to an array of integers. It will then apply
% a hashing algorithm to it and then return a unique integer value.
% Input: a 1D array (of integers or characters (a string)) (inputArray)
% Output: an integer representing the hash value calculated (h)
% Author: Amanda Lowe, alow719, 2022

%converts the input array to an array of integers (doubles). If the
%input array is already an array of integers, it won't do anything to it
inputArray = double(inputArray);

%Setting h to 0 initially and assigning a value to hashsize (which will
%be used in the hashing algorithm
h = 0; hashsize = 2^20;

%Using the hashing algorithm. Starting from 1, it will iterate through
%each element of 'a' and will set h to a(i) + 31*h and then set h to
%the remainder of h divided by hashsize (using mod).
for i = 1:1:length(inputArray)
    h = inputArray(i) + 31*h;
    h = mod(h,hashsize);
end
end
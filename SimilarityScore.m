function [score] = SimilarityScore(positionMatchesArray, k, stringLength)
% This is a function that takes in an array of matches positions for a
% string and returns a score which is the proportion of characters in a
% string matched.
% Inputs: 1)A 1D array containing a list of indices which correspond to
% position matches (this could be an empty array). (positionMatchesArray)
% 2)A non-zero integer greater than 0 indicating the length of each match (k).
% 3)An integer which is the total length of the string that was converted
% into k-grams.
% Output: a decimal number, which is the percentage the string that matched.
% Author: Amanda Lowe, alow719, 2022

% matchesArray is an array that will contain 1s and 0s (it is a
% 1xstringLength array). 1s indicate a match and 0s indicate not a match.
% matchesArray is initialized as all zeros.
% matches is the number of matches, initialized as 0.
matchesArray = zeros(1,stringLength); matches = 0;

% iterate through each element of positionMatchesArray. Each iteration, it
% will take postionMatchesArray(i) to the (k-1)'th element after that as
% the starting and ending index for matchesArray to assign as 1s (to
% indicate a match)
for i = 1:1:length(positionMatchesArray)
    matchesArray(positionMatchesArray(i):(positionMatchesArray(i)+(k-1))) = 1;
end

% iterate through each element of the matchesArray. Each iteration, if
% matchesArray(j) is 1, then increment matches by 1
for j = 1:1:stringLength
    if matchesArray(j) == 1
        matches = matches + 1;
    end
end

%calculate the score by dividing matches by stringLength
score = matches/stringLength;
end
function [fingerprintsArray] = Fingerprint(windowsArray)
% This is a function that takes a set of windows (in the form of a 2D
% array) and calculates a document fingerprint using the winnowing
% algorithm (i.e. select the rightmost minimum value from each window). It
% will return the document fingerprint as a 2D array were each column
% contains a winnowed value and its corresponding position in the original
% hash (the relative position).
% Input: nxw 2D array representing a set of windows, where each window has
% w values in it (windowsArray)
% Output: 2 row 2D array where the first row contains the winnowed values
% calculated and the second row contains the corresponding positions
% (fingerprintsArray)
% Author: Amanda Lowe, alow719, 2022

% Finding the size of the input array and assigning it to a variable so
% that it can be used to go through each row of the input array.
rowsColsWindows = size(windowsArray);

% Assigning values to the first column elements of fingerprintsArray (so
% that later in the code, the code will be able to check if the relative
% postition has been added to the array yet).
[min, overallPosition] = RightMin(windowsArray(1,:));
fingerprintsArray(1,1) = min;
fingerprintsArray(2,1) = overallPosition;

% offset will be used in the for loop below to account for the 'offset'
% that occurs between i and the index that we want to check or add an
% element to whenever there is nothing added to fingerprintsArray in the
% iteration. Initialized as 1
offset = 1;

% Iterate from the second (since the first element has already been set) to
% the last row of windowsArray. Each iteration, call the function RightMin
% to get the minimu value and the position and if the relative position has
% not been added to fingerPrintsArray, add the min value and position to
% fingerPrintsArray.
for i = 2:1:rowsColsWindows(1)
    % Assign the outputs to min and windowPosition (since the position
    % returned by RightMin will be the position of the minimum value in the
    % window, not the original hash sequence). overallPosition is the
    % relative position and is found by adding (i-1) to the window position.
    [min, windowPostition] = RightMin(windowsArray(i,:));
    overallPosition = windowPostition+(i-1);

    % If overallPosition if not equal to the 'last position' stored in
    % fingerprintsArray, then add the minimum value and overallPosition to
    % fingerprintsArray. Otherwise, increment offset by 1.
    if overallPosition ~= fingerprintsArray(2,(i-offset))
        fingerprintsArray(1,(i-offset+1)) = min;
        fingerprintsArray(2,(i-offset+1)) = overallPosition;
    else
        offset = offset + 1;
    end
end
end
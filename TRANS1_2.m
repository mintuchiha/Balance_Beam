function [ N ] = TRANS1_2( P, theta2 )
%Task #3: Convert points representing first link

clc;

T = [cos(theta2), -sin(theta2), 0, 0 
    0, 0, -1, 8
    sin(theta2), cos(theta2), 0, 0
    0, 0, 0, 1];

N = T*P;

%What FRAME is your graph representing?
%FRAME-1

%What is the shape of the work envelope of this one-link robot?
%
end


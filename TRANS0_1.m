function [ N ] = TRANS0_1( P, theta1 )
%Task #3: Convert points representing first link

clc;

T = [cos(theta1), sin(theta1), 0, 0 
    -sin(theta1), cos(theta1), 0, 0
    0, 0, 1, 0
    0, 0, 0, 1];

N = T*P;


%What FRAME is your graph representing?
%FRAME-0

%What is the shape of the work envelope of this one-link robot?
%circle
end


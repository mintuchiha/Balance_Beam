%%  Animator function
%
%   Animator gets called from an interpreted matlab function from 
%   Simulation.slx simulink file.

function [] = Animator( q1, q2 )

%   Base Shaft Plot
x = zeros(21,1);
y = zeros(21,1);
z = -20:0;

Px = [0 0 0 0 0];
Py = [0 0 6 6 8];
Pz = [0 -1 -1 0 0];

P = [Px; Py; Pz; ones(1,5)];

Px2 = [0 0];
Py2 = [0 12];
Pz2 = [0 0];

P2 = [Px2; Py2; Pz2; ones(1,2)];

[N1] = TRANS0_1(P, q1);                 %   arm 1 angle
[N2] = TRANS0_1(TRANS1_2(P2,q2),q1);    %   arm 2 angle wrt arm 1 angle

[M]=[N1,N2];    
h = axes;
while (ishandle(h)) %   stop if figure closed x
    %   Animation
    plot3(x, y, z, '-o');
    axis([-12 12 -12 12 -12 12])
    hold on; grid on;
    plot3(M(1,:), M(2,:), M(3,:))
    hold off; grid on;
    pause(0.02);
end
end


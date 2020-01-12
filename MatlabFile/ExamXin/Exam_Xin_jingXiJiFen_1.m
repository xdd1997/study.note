%==============Precise Integration Method==========
clc
format long
A = zeros(2);
K = [25 -15;-15 15];    %Stiffness matrix
M = [5 0;0 5];  %Mass matrix
H = [A inv(M);-K A];	
I = eye(size(H));
v0 = [0;0;10;10];

N = 20;
tk = 400;	%Time
dt = tk / 2^N;  %step
Ta = H * dt + (H * dt)^2 * ( I + (H * dt)^3 +(H * dt)^2/12 ) / 2;
for ii = 1:N
    Ta = 2 * Ta + Ta * Ta;   
end
T = I + Ta; 
vk = T * v0
%=================post-processing=================
x1 = vk(1)      % Displacement of m1
v1 = vk(3)/5    % Velocity of m1
x2 = vk(2)      % Displacement of m2
v2= vk(4)/5     % Velocity of m2



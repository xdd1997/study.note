%==============Precise Integration Method==========
clc
clear all
clf
format short
A = zeros(2);
K = [25 -15;-15 15];    %Stiffness matrix
M = [5 0;0 5];  %Mass matrix
H = [A inv(M);-K A];	
I = eye(size(H));
v0 = [0;0;10;10];

N = 20;
for tk =0:0.05:450
   % tk = 800;	%Time
    dt = tk / 2^N;  %step
    Ta = H * dt + (H * dt)^2 * ( I + (H * dt)^3 +(H * dt)^2/12 ) / 2;
    for ii = 1:N
        Ta = 2 * Ta + Ta * Ta;   
    end
    T = I + Ta; 
    vk = T * v0
    %=================post-processing=================
    x1 = vk(1);
    v1 = vk(3)/5;
    x2 = vk(2);
    v2 = vk(4)/5;
    plot(tk,x1,'.')
    hold on
    axis([0 450 -2.5 2.5])
    title('x1时程曲线')
    xlabel('时间 t(s)')
    ylabel('位移 x1(m)')
end



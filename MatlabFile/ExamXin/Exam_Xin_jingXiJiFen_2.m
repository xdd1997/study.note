%==============Precise Integration Method==========
clc
clear
A = zeros(2);   C =A;
D = [0.5 0;0 1];
B = [-6 2;2 -4];
f0 = [0;0; 0;10];
f1 = zeros(size(f0));
H = [A D;B C];
I = eye(size(H));
iH = inv(H);

tf = 20;
step =[2,1,0.1];
N = 20;
figure;hold;
str = ['o','x','b-'];
for jj = 1:3
    dt = step(jj)/2^N;
    Ta = H * dt + (H * dt)^2 * ( I + (H * dt)^3 +(H * dt)^2/12 ) / 2;
    for iter = 1:N
        Ta = 2 * Ta + Ta * Ta;   
    end
    T = I + Ta;

    vk = [0;0;0;0];
    for iter = 1:tf/ step(jj)
        iter;
        t(:,iter) = step(jj) * (iter - 1);
        v(:,iter) = vk(1);
        vk = T * (vk + iH * (f0 + iH * f1))   - iH * (f0 + iH * f1 + f1 * step(jj));
    end
    plot(t(1:tf/step(jj)),v,str(jj));
end


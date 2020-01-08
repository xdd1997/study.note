clc
%========1=离散=======
%结构以及离散
%========2-单元刚度矩阵
k1 = SpringElementStiffness(100);
k2 = SpringElementStiffness(200);
K = zeros(3,3);
%========3-集成整体刚度矩阵=========
K = SpringAssemble(K,k1,1,2);
K = SpringAssemble(K,k2,2,3);
%========4-引入边界条件=======

k = K(2:3,2:3);
f = [0;15] ;
%########5-解方程############
u = k\f;
%########6-后处理#############
U = [0;u];
F = K*U%得到f1 = -15(方向向左）
u1 = [U(1);U(2)]
f1 = SpringElementForces(k1,u1)
u2 = [U(2);U(3)]
f2 = SpringElementForces(k2,u2)






    


         
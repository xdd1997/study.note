clc
%========1=��ɢ=======
%�ṹ�Լ���ɢ
%========2-��Ԫ�նȾ���
k1 = SpringElementStiffness(100);
k2 = SpringElementStiffness(200);
K = zeros(3,3);
%========3-��������նȾ���=========
K = SpringAssemble(K,k1,1,2);
K = SpringAssemble(K,k2,2,3);
%========4-����߽�����=======

k = K(2:3,2:3);
f = [0;15] ;
%########5-�ⷽ��############
u = k\f;
%########6-����#############
U = [0;u];
F = K*U%�õ�f1 = -15(��������
u1 = [U(1);U(2)]
f1 = SpringElementForces(k1,u1)
u2 = [U(2);U(3)]
f2 = SpringElementForces(k2,u2)






    


         
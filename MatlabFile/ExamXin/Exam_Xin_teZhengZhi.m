clear
clc
format long
%================求特征值==============================
syms lambda

H = [0 0 1 0;
     0 0 0 1;
    -4 2 0 0;
     2 -4 0 0];
E= eye(4);
teZhengFangCheng = lambda*E - H;
canshu1 = det(teZhengFangCheng)
solve('t^2 +8*t+12 =0','t');
%=============求特征向量===============================
canshu1 = rref(-sqrt(6)*i*E - H); %  -sqrt(6)i
canshu2 = rref(-sqrt(2)*i*E - H) ;% -sqrt(2)i
canshu3 = rref( sqrt(2)*i*E - H) ;% sqrt(2)i
canshu4 = rref( sqrt(6)*i*E - H) ;% sqrt(6)i
%============求归一化的特征向量==============================
a1 = [(-sqrt(6)/6)*i  ; (sqrt(6)/6)*i ; -1;  1] 
a2 = [ (sqrt(2)/2)*i;   (sqrt(2)/2)*i;   1;  1] 
a3 = [ (sqrt(6)/6)*i;  (-sqrt(6)/6)*i;  -1;  1] 
a4 = [(-sqrt(2)/2)*i;  (-sqrt(2)/2)*i;   1;  1] 

J =  [0 0 1 0;
      0 0 0 1;
      -1 0 0 0;
      0 -1 0 0]; 
  a1.'*J*H*a1
a1.'*J*a3;
a2.'*J*a4;
a3'*J*a1;
%==================精细积分题=============================




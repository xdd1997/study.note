%��1-1
5 * (3/4) + 9/5
%��1-2
r=9
V=(4/3)*pi*r^3
%��һ��ϰ��
5+11/14
5+8/3+3^7
format rat ;sin(pi/3)           %�Է�����ʾ���
A=[1 2 3;3 4 5;4 5 6; 7 8 9]
length(A)
size(A)
t=[0:1:4]
% y=exp(2*t).*sin(t)
fplot('exp(2*t).*sin(t)',[0,4])


t=[0:(2*pi/90):2*pi];
a=[0:2*pi/90:2*pi];
polar(t,a)

while(1)
    a=input('������༶����:\n')

switch a
    case 1  disp('����Ϊ1')
    case 2
        disp('����Ϊ2')
    otherwise
        disp('��֪�����������ɶ') 
        break
end
end

s=solve('x^2-1=0')


syms x 
f=x;
F=int(f,2,4)
subs(F,{x},{2,4})

syms x b
f=b^x;
F=int(f)
subs(F,{b,x},{2,4})




























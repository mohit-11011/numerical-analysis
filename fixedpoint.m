format short;
clc
clear all
syms y(x);
%y=@(x) x+2*sin(pi*x);
%df = diff(y(x))
g=@(x) x-( x+2*sin(pi*x))/(2*pi*cos(pi*x) + 1);
x0=1;
x1=g(x0);
e=input('enter the error ');
while(abs(x1-x0)>e)
 x0=x1;
 x1=g(x0);

end
fprintf("the value of t is %f\n",x1)
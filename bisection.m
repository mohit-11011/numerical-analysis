format short
clc
clear all
f=@(r) (1.129241*10^(-3))+(2.341077*(10^(-4))*log(r))+(8.775468*(10^(-8))*((log(r))*3))-
(1/291.99);
a=input('enter the lower bound ');
b=input('enter the upper bound ');
e=input('enter the error ');
n=ceil((log(b-a)-log(e))/log(2));
fprintf("n=%d\n",n)
for i=1:n
c=(b+a)/2;
if f(a)*f(c)<0
b=c;
else
a=c;
end
end
fprintf("c=%f\n",c)
format short
clc
clear all
f=@(x) x^2-29;
n1=input('enter the bounds for ivt ');
h=input('enter the step size for ivt ');
for i=-n1:h:n1
    if(f(i)*f(i+h)<0)
        a=i;
        b=i+h;
    end
end
    
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
fprintf("c=%f\n",c);
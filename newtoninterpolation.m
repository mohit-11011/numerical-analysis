clc
clear all
x=[1;1.5;2.0;2.5];
fx=[2.7183;4.4817;7.3891;12.1825];
n=4;
f=zeros(n,n);
for i=1:n
    f(i,1)=fx(i);
end
for j=2:n
    for i=j:n
        f(i,j)=(f(i,j-1)-f(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
b=input('enter the input whose value is to be found ');
prod=zeros(n);
sum=f(1,1);
for i=2:n
    prod(i)=1;
    for j=1:i-1
        prod(i)=prod(i)*(b-x(j));
    end
    sum=sum+(f(i,i)*prod(i));
end
fprintf('the value of polynomial at %f after interpolating is %f',b,sum)
error=exp(b)-sum;
fprintf('\nthe error is %f',error)


        

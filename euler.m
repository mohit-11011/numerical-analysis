clc
clear all
f=@(t,y) -y+2*cos(t);
a=0;
b=1;
h=0.2;
n=(b-a)/h;
y=zeros(n+1);
t(1)=a;
y(1)=1;
for i=1:n
    y(i+1)=y(i)+h*f(t(i),y(i));
    t(i+1)=t(i)+h;
end
for i=1:n+1
    fprintf('f(%f) = %f \n',t(i),y(i));
end
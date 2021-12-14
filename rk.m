clc
clear all
f=@(t,y) -y+2*cos(t);
a=0;
b=1;
h=0.2;
n=(b-a)/h;
t=zeros(n+1);
y=zeros(n+1);
t(1)=a;
y(1)=1;
for i=1:n
    k1=h*f(t(i),y(i));
    k2=h*f(t(i)+h/2,y(i)+k1/2);
    k3=h*f(t(i)+h/2,y(i)+k2/2);
    k4=h*f(t(i)+h,y(i)+k3);
    y(i+1)=y(i)+(k1+2*(k2+k3)+k4)/6;
    t(i+1)=t(i)+h;
    
end
for i=1:n+1
    fprintf('f(%f) = %f \n',t(i),y(i));
end
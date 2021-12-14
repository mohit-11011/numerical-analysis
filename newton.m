format short;
clc
clear all
syms y(x);
y=@(x) 9*exp(-x)*sin(2*pi*x)-3.5;
df = diff(y(x))
h=input('enter the variation for ivt ');
for i=0:h:100
 if(y(i)*y(i+h)<0)
 a=i;
 b=i+h;
 break;
 end
end
x0=(a+b)/2;
x1=x0-((y(x0))/vpa(subs(df,x,x0)));
e=input('enter the error ');
while(abs(x1-x0)>e)
 x0=x1;
 x1=x0-((y(x0))/vpa(subs(df,x,x0)));

end
fprintf("the value of t is %f\n",x1);
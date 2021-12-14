clc
clear all
format long
Y=[14.621,11.843,9.870,8.418,7.305,6.413];
x=[0 8 16 24 32 40];
l=[1 1 1 1 1 1];
b=input('enter the input whose value is to be found ');
n=6;
for i=1:n
    for j=1:n
        if(i~=j)
            l(i)=((b-x(j))/(  x(i)-x(j) )   )*     l(i);
        end
    end
end
sum=0;
for loop=1:n
    sum=sum+l(loop)*Y(loop);
end
sum
            
            
            
    

clc
clear all
n=5;
a=[5,5,0,0,0,5.5;
 1,-1,-1,0,0,0;
 0,5,-7,-2,0,0
 0,0,1,-1,-1,0;
 0,0,0,2,-3,0;
 ];
for j=1:n-1
 for i=j+1:n
 a(i,:)=a(i,:)-(a(i,j)/(a(j,j)))* a(j,:);
 end
end
x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
 s=0;
 for j=i+1:n
 s=s+a(i,j)*x(j);
 x(i)=(a(i,n+1)-s)/a(i,i);
 end
end
x
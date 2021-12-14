clc
clear all
A=[4 1 0;1 20 1;0 1 4];
X0=[1; 1; 1];
k0=0;
e=0.001;

for i=1:1000
    Y=A*X0;
    k1=max(abs(Y));
    X0=(1/k1).*Y;
    if(abs(k1-k0)<=e)
        k1
        X0
        break;
        
    end
    k0=k1;
    
    
end

        
   
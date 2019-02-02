tic

b=15;
n=21;
a=[];
format long
while n<1e12
    B=3*b+2*n-2;
    N=4*b+3*n-3;
    b=B;
    n=N;
    a(end+1)=B;
end




toc
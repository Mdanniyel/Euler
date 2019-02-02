f=cumprod(1:100);
c=0;
for n=2:100
    for r=n-1:-1:1
        ncr=f(n)/(f(r)*f(n-r));
        if ncr>1e6
            c=c+1;
        end
    end
end
c
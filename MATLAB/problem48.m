tic
r=0;
for i=1:1000
    a=1;
    for j=1:i
        a=mod(a*i,1e10);
    end
    r=mod(r+a,1e10);
end
num2str(r)
toc
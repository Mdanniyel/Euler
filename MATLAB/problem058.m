tic
a=[1];
p=[];
for i=3:2:1e5
    b=i^2:-i+1:((i-2)^2)+1;
    bp=b(isprime(b));
    a=[a b];
    p=[p bp];
    d=length(p)/length(a);
    if d<0.1
        break
    end
end
disp(i);
toc
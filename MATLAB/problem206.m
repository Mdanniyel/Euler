tic
f=0;
s=[1,2,3,4,5,6,7,8,9];
i=138902663;
while 1==1
    n=longPow(i,2);
    if all(n(1:2:end)==s) || i<138901916
        i
        break
    end
    i=i-2;
end
toc
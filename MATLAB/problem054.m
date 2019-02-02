tic
load poker
v=[];
c=0;
for i=1:1e3
    a=poker(pok(i,1:10));
    b=poker(pok(i,11:20));
    if a>b
        c=c+1;
    end
end
disp(c)
toc
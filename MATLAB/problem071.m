tic
d=7:1e6;
d(mod(d,7)==0)=[];
n=floor((d)/7*3);
a=n./d;
n(find(a==max(a)))
toc
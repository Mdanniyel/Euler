tic
load p99
a=p99(:,2).*log(p99(:,1));
find(a==max(a))
toc
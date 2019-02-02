tic
n=2:300000;
t=n.*(n+1)./2;
p=n.*(3.*n-1)./2;
h=n.*(2.*n-1);
pt=p(ismember(p,t));
pth=h(ismember(h,pt))
toc
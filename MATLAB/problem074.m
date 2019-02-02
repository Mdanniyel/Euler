clear all
tic
su=zeros(1,22e5);
c([169 363601 1454])=3;
c([871 45361 872 45362])=2;
c(145)=1;
c(22e5)=0;
res=0;
for i=1:1e6
    if c(i)>0
        continue
    end
    if su(i)==0
        su(i)=SumFac(i);
    end
    s=su(i);
    if c(s)>0
        c(i)=c(s)+1;
        continue
    end
    l=[i];
    while ~any(s==l)
        l=[l s];
        if su(s)==0
            su(s)=SumFac(s);
        end
        s=su(s);
        if c(s)>0
            a=length(l):-1:1;
            c(l)=a+c(s);
            break
        end
    end
    if length(l)>59
        res=res+1;
    end
end
length(find(c==60))
toc
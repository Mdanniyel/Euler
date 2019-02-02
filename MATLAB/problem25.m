clc
a=zeros(3,1000);
a(1,end)=1;
a(2,end)=1;
c=2;
while sum(a(3,:)>0)<100
    a(3,:)=0;
    for i=0:sum(a(2,:)>0)
        if  (a(1,end-i)+a(2,end-i)+a(3,end-i))>9
            a(3,end-i)=mod((a(1,end-i)+a(2,end-i)+a(3,end-i)),10);
            a(3,end-1-i)=a(3,end-1-i)+1;
        else
            a(3,end-i)=(a(1,end-i)+a(2,end-i)+a(3,end-i));
        end
    end
    [a(1,end),a(2,end),a(3,end)];
    a(1,:)=a(2,:);
    a(2,:)=a(3,:);
    c=c+1;
end
c
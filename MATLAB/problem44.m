clc
tic
n=1:3000;
a=n.*(3*n-1)./2; 
for i=1:length(a)
    for j=i:length(b)
        if any((a(j)+a(i))==a)&&any((a(j)-a(i))==a)
            a(j)-a(i)
            toc
            return
        end
    end
end
        
toc
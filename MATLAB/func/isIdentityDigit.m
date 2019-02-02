function [ z ] = isIdentityDigit(x)

l1=floor(log10(x(1)));
for i=2:length(x)
    if l1~=floor(log10(x(i)))
        z=0;
        return
    end
end
d1=sort(Dig(x(1)));
for i=2:length(x)
    q=d1-sort(Dig(x(i)));
    if any(q~=0)
        z=0;
        return
    end
end
z=1;
end
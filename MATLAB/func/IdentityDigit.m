function [ z ] = IdentityDigit(x)
%x=sort(x);
x1=sort(int2str(x(1)));
%if length(x1)~=length(int2str(x(end)))
%    z=0;
%    return
%end
for i=2:length(x)
    if any(x1~=sort(int2str(x(i))))
        z=0;
        return
    else
        z=1;
    end
end
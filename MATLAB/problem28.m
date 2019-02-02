s=1;
for i=1:2:999
    s=s+sum(((i+2)^2):-(i+1):i^2+1);
end
s
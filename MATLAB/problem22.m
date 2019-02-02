p=sort(p022);
a=0;
for i=1:length(p)
    a=a+sum(double(char(p(i)))-64)*i;
end
a
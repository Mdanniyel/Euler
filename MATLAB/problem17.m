letters=0;
for i=1:1000
    letters=letters+length(num2words_fast(i));
end
letters
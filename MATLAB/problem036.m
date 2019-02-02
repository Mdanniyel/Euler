tic
p=[];
for i=1:2:1e6
    if IsPalindrome(i)
        if IsPalindrome(de2bi(i))
            p=[p i];
        end
    end
end
sum(p)
toc
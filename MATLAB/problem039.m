%If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

%{20,48,52}, {24,45,51}, {30,40,50}

%For which value of p ? 1000, is the number of solutions maximised?
tic
r=0;
for p=2:2:1000
    n=0;
    for a=2:p/3
        if mod((p*(p-2*a)),2*p-2*a)==0
            n=n+1;
        end
    end
    if n>r
        r=n;
        rr=p;
    end
end
rr
toc
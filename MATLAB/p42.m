function sol = p42()
fid = fopen('p042_words.txt');
W = textscan('%q', 'delimiter', ',');
vals = char(W{1});
vals = double(vals);
vals = vals - 64;
vals(vals < 0) = 0;
sums = sum(vals,2);
n = ceil(sqrt(1+8*max(sums))-1)/2;
tris = cumsum(1:n);
sol = sum(ismember(sums, tris));
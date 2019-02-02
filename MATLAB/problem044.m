tic
n = 1:3000;
pent = n.*(3*n-1)./2;
comp = pent(ones(1,length(pent)),:); % makes array with repeating rows.
compD = comp - comp';                % indices follow as comp(j,k) = pent(k) - pent(j).  comp(j,k) st j > k 
compS = comp + comp';                % will be < 0.
Dlog = ismember(compD,pent);
Slog = ismember(compS,pent);
log = Dlog & Slog & (compD > 0);
[j k] = find(log);
D = min([compD(j,k)])
toc
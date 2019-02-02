%In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

%1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
%It is possible to make £2 in the following way:

%1ª£1 + 1ª50p + 2ª20p + 1ª5p + 1ª2p + 3ª1p
%How many different ways can £2 be made using any number of coins?
tic

coins=[1,2,5,10,20,50,100,200];
ways(1:201)=0;
ways(1)=1;
for i=1:length(coins)
    for n=coins(i)+1:201
        ways(n)=ways(n)+ways(n-coins(i));
    end
end
ways(end)
toc
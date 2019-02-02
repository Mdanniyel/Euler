clc;clear;tic;
x=Stimate_e(100);
disp(sum(x{1}))
toc;

function x=Stimate_e(n)
% n should be bigger than 1
n=n-1;

x={1,1};
Upperk=floor((n-2)/3);
kposition=Upperk*3+2;
if n==kposition
    x{2}=2*(Upperk+1);
else
    x{2}=1;
end

npo=n;
for i=1:n-1
   x=flip(FractionSum(x,Evaluating_b(npo-1)));
   npo=npo-1;
end
x=FractionSum(x,2);
end

function b=Evaluating_b(npo)
Upperk=floor((npo-2)/3);
kposition=Upperk*3+2;
if npo==kposition
    b=2*(Upperk+1);
else
    b=1;
end
end

function x=FractionSum(A,b)
% A is Fraction (1x2 Matrix), b is Number
x={Sum(b*A{2},A{1}),A{2}};
end

function X = Sum(A,B)
% A=123 => input: A=[1,2,3]

% A choose to be Biggest of both
% cmp=Compare2Number(A,B);
% if strcmp(cmp,'B')
%     AA=A;
%     A=B;
%     B=AA;
% end

A=flip(A);
B=flip(B);

NumelA=numel(A);
NumelB=numel(B);

X=[A;B zeros(1,NumelA-NumelB);zeros(1,NumelA)];


for j=1:NumelA   
        qq=0;
        for i=1:2
            qq=qq+X(i,j);
        end
        X(3,j)= qq;    
end
X=X(3,:);

for kk=1:NumelA-1
   FirstDigit=mod(X(kk),10);
   OtherDigits=floor(X(kk)/10);
   X(kk+1)=X(kk+1)+OtherDigits;
   X(kk)=FirstDigit;
end
FF=X(end);
for pp=1:HMDigit(FF)
    Digit=(mod(FF,10^pp)-mod(FF,10^(pp-1)))/10^(pp-1);
    FFM(pp)=Digit;
end
X=[X(1:end-1),FFM];

X=flip(X);
end

function i =HMDigit(s)
% HMDigit = How Many Digit 
i=1;
while(true)
    s=floor(s/10);
    if s==0
        break;
    end
    i=i+1;
end
end
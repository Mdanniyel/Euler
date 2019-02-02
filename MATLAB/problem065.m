a=[0 1];
for i=2:2:67
    a=[a i 1 1];
end
n=[2 3];
for i=3:100
    d=vpa((n(i-1)*a(i))+n(i-2),100);
    n=[n d];
end
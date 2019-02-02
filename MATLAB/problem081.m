%In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, by only moving to the right and down, is indicated in bold red and is equal to 2427.

%????????131201630537805673968036997322343427464975241039654221213718150111956331????????
%(131673234103182019634296515063080374642211153769949712195680573252437331)
%Find the minimal path sum, in matrix.txt (right click and "Save Link/Target As..."), a 31K text file containing a 80 by 80 matrix, from the top left to the bottom right by only moving right and down.
tic
load matrix81.mat
for i=1:80
    for j=1:80
        if i==1 && j==1
            a{1}=mat(1);
            continue
        end
        if i==1
            a{i,j}=a{i,j-1}+mat(i,j);
        elseif j==1
            a{i,j}=a{i-1,j}+mat(i,j);
        else
            a{i,j}=min(a{i-1,j},a{i,j-1})+mat(i,j);
        end
    end
end
a{end}
toc
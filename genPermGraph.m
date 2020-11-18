function [adjMat,G] = genPermGraph(perm)
n = length(perm);
adjMat = zeros(n);

for i = 1:n
    for j = i:n
        indexI = find(perm==i);
        indexJ = find(perm==j);
        if (i-j)*(indexI-indexJ) < 0
            adjMat(i,j) = 1;
        end
    end
end
adjMat = adjMat+adjMat';
G = graph(adjMat);
function [points] = genEmbedding(perm)

n = length(perm);
points = zeros(n,2);
points(:,1) = [1:n]';
for i = 1:n
    points(i,2) = n+1-find(perm==i);
end

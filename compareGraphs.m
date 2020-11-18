clear
clc
close all;

%% Generate a permutation
n = 12;
perm = randperm(n);
perm = [4,2,6,1,9,3,7,5,12,11,8,10];

%% Generate the permutation graph
[adjMat,G] = genPermGraph(perm);

%% Generate the embedding graph
points = genEmbedding(perm);

%% Plot
figure(); %the permutation graph
plot(G); 

figure();%the embedding vertices
scatter(points(:,1),points(:,2)); hold on; 
for i = 1:n
    for j = i:n
        if adjMat(i,j) == 1
            plot([i j],[points(i,2), points(j,2)],'k-')
        end
    end
end

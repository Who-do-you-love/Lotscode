clc
clear

% 设置处理点的数量
N = 50;
M = zeros(N, 2);
% 产生100个位置不同的点
M(:, 1) = randperm(N);
M(:, 2) = randperm(N);
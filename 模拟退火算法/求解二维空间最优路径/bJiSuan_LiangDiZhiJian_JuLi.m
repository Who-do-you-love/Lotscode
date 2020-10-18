% 初始化距离矩阵
d = zeros(N);
% 统计每两个点之间的距离
for i=1:N-1
    for j=i+1:N
        d(i, j) = sqrt((M(i,1)-M(j,1))*(M(i,1)-M(j,1)) + (M(i,2)-M(j,2))*(M(i,2)-M(j,2)));
    end
end
% 初始化路径及路线长度
path = zeros(1, N);
length = inf;
% 先确定一个比较好的初始解
for i=1:1000
    path0 = randperm(N); % randperm 1-N 乱序排列
    temp = 0;
    for j=1:N-1
        temp = temp + d(path0(j) , path0(j+1));
    end
    if temp < length
       length = temp;
       path = path0;
    end
end
length
subplot(1, 2, 1)
plot(M(path, 1), M(path, 2), '-o');
title("Initial Solution");d
% ��ʼ���������
d = zeros(N);
% ͳ��ÿ������֮��ľ���
for i=1:N-1
    for j=i+1:N
        d(i, j) = sqrt((M(i,1)-M(j,1))*(M(i,1)-M(j,1)) + (M(i,2)-M(j,2))*(M(i,2)-M(j,2)));
    end
end
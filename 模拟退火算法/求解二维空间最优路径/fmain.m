for k = 1:L
    % 产生新解
    c = floor(rand(1, 2)*(N-2)) + 2; % floor 比它小的最大整数   
    c = sort(c);
    c1 = c(1);
    c2 = c(2);
    change = d(path(c1-1), path(c2)) + d(path(c1), path(c2+1)) - d(path(c1-1), path(c1)) - d(path(c2), path(c2+1));
    if change < 0
        path = [path(1:c1-1), path(c2:-1:c1), path(c2+1: N)];
        length = length + change;
    elseif exp(-change/T) >= rand % 接受条件
        path = [path(1:c1-1), path(c2:-1:c1), path(c2+1: N)];
        length = length + change;
    end
    T = T * at;
    if T < e
        break;
    end
end
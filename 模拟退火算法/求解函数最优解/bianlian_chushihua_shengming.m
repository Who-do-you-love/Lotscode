
%生成初始解  
sol_new2=1;%（1）解空间（初始解）  
sol_new1=2-sol_new2^2;  
sol_current1 = sol_new1;   
sol_best1 = sol_new1;  
sol_current2 = sol_new2;   
sol_best2 = sol_new2;  
E_current = inf;  
E_best = inf;
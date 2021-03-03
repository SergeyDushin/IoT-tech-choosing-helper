function [sol_number, cost_function, opt_solution] = make_decision(sol_mat, capex_mat, opex_mat, params)
%This function make a desicion accorfing to presentation

%the function returns:
% 1. number of possible solutions
% 2. cost function for all relevant solutions
% 3. the position of solution in sol_mat(i,j) with minimum cos function 
sc=params(11,1);
tb = params(9,1);

k=0;
for(i=1:length(sol_mat(:,1)))
    for (j=1:length(sol_mat(1,:)))
        if (sol_mat(i,j)==1)
            k=k+1;
            sol_number(k)=i*10+j; % simple way if i and j < 10
            cost_function(k) = capex_mat(i,j)*sc+opex_mat(i,j)/sc + opex_mat(i,j)*tb;
        end
    
    end  
end


[min_value, number_of_min] = min(cost_function);

opt_solution=sol_number(number_of_min);

end


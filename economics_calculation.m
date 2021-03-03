function [sol_mat, capex_mat, opex_mat] = economics_calculation(params, techs, sw, techs_profiles, sw_profiles)
%This function calulate a integral economicas parameters for possible
%solutions

% This function realization is calulated capex and opex matrix for all
% combination of the sw and techs, but valuebale marked in sol_mat by 1



%% make a possible solutions
% The solution matrix contains possible conbination of techs and sw (if 1 - possible, if zero - not allow)  

sol_mat=zeros(length(sw), length(techs));
for(i=1:length(sw))
    
    sol_mat(i,:)=techs*sw(i);
    
end


%% capex calculation

capex_mat=zeros(length(sw), length(techs));

for(i=1:length(sw))
    for (j=1:length(techs))
        if (sol_mat(i,j)==1)
            capex_mat(i,j)=params(1)*techs_profiles(5,j)+params(1)*sw_profiles(4,i); % without integration
            fprintf('capex of %i%i is %d \n', i,j, capex_mat(i,j))
        end
    
    end  
end


%% opex calculation

opex_mat=zeros(length(sw), length(techs));

for(i=1:length(sw))
    for (j=1:length(techs))
        if (sol_mat(i,j)==1)
            opex_mat(i,j)=params(1)*techs_profiles(5,j) + params(1)*sw_profiles(4,i); % without integration
            fprintf('opex of %i%i is %d \n', i,j, opex_mat(i,j))
        end
    
    end  
end



end


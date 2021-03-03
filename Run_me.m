%% Decision support algorithm for IoT tech choosing
% This is a sipmle algorithm, which helps to comare and choose the techs 
% for specific IoT application according the proposition in attached
% presentation (plenary dscussion on EnT-2021 conference)

% The following parameters are considered: 
% operator's Ethernet, private RC/Eth HUBs, private LoRaWAN, 
% private PLCs, NB-IoT (operator), 2G Cells (operator), 3G Cells (operator), 
% SMS (operator)

% Following sw are under consideration:
% NoUpperSystem, AWS, ThingsBoard

% Following cases are considered (according presentation):
%1. ICS RAS case
% You can add your case


% This algorithm contain only basic profiles of techs and software considered. 
% You can add any parameters and choose any function for oprimization.  

%**************************************************************************

close all
clear all

%% Form the vector of the project parameters
project_params_ICS_case; % load ICS project params



%% Load techs and sw profile (include both tech and economics) 
transport_and_sw_profiles


%% Suitable techs and sw choosing
[techs_selected, sw_selected] = possible_tech_sw(params, techs_profiles, sw_profiles);


%% Economical properties of solution (combination of choosed tech and sw)
[sol_mat, capex_mat, opex_mat]=economics_calculation(params, techs_selected, sw_selected, techs_profiles, sw_profiles);


%% Optimization
[sol_number, cost_function, opt_solution_number]=make_decision(sol_mat, capex_mat, opex_mat, params);
fprintf('Oprimazed solution number is %d (first number - sw, second - tech) \n', opt_solution_number)


%% parsing
name_opt=parsing(opt_solution_number, techs_selected, sw_selected, techs_profiles, sw_profiles);
fprintf('Oprimazed solution is %s \n', name_opt)


%% extract data from matrices
k=0;
for(i=1:length(sol_mat(:,1)))
    for (j=1:length(sol_mat(1,:)))
        if (sol_mat(i,j)==1)
            k=k+1;
            rel_sol_number(k)=i*10+j; % simple way if i and j < 10
            capex_function(k) = capex_mat(i,j);
            opex_function(k) = opex_mat(i,j);
        end
    
    end  
end


%% print results
%print CAPEX
figure(1)
stem(rel_sol_number, capex_function)
xlabel('relevant slutions')
ylabel('capex')
legend('capex for relevant solutions')

%print OPEX
figure(2)
stem(rel_sol_number, opex_function)
xlabel('relevant slutions')
ylabel('opex')
legend('opex function for relevant solutions')

%print cost function
figure(3)
stem(sol_number, cost_function)
xlabel('relevant slutions')
ylabel('cost function')
legend('cost function for relevant solutions') 


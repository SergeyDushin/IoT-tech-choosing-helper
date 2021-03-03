function [techs_selected_mask, sw_selected_mask] = possible_tech_sw(proj_params,techs_profiles, sw_profiles)
%This function analises the requirments and chooses the suitable techs and sostware
% the function returns the mask of possible techs and mask for possible sw 



%% Techs array

techs_selected_mask=zeros(8,1);

for(i=1:length(techs_profiles(1,:)))
    
    % check bitrate
    if(proj_params(4)<=techs_profiles(1,i))
        % check max distance 
        if(proj_params(8)<=techs_profiles(3,i))
                % check bettery powering is not realized. all is avalable in this version            
                 % chek IoT providers is not realized. all is avalable in this version               
                  techs_selected_mask(i)=1; % if 1 - techs is suatable
                  fprintf('tech %i is selected (see profiles for identification) \n', i)
        end
    end
end


%% sw arry
if(proj_params(1)<=10&&proj_params(10)<=10) % medium or large scale project
    sw_selected_mask(1)=1; % if 1 - techs is suatable
    fprintf('small project, no upper sw is selected \n')
end

if(proj_params(12)==0) % check source code is nesesary
    sw_selected_mask(2)=1; 
    fprintf('Cloud platform is selected \n')
end

    sw_selected_mask(3)=1; 
    fprintf('Enterprise platform is selected \n')




end


function [name_opt] = parsing(opt_solution_number, techs, sw, techs_profiles, sw_profiles)
% This function convert of the selected solution to the name of techs and
% sw


sw=floor(opt_solution_number/10);
tech=opt_solution_number-sw*10;


%upper level sysytem
if (sw==1) 
    name_opt = "No upper level";
end

if (sw==2)
    name_opt = "AWS";
end  

if (sw==3)
    name_opt = "ThingsBoard";
end  

% transport tech

if (tech==1) 
    name_opt = name_opt + "+ Ethernet";
end

if (tech==2)
    name_opt = name_opt + "+ RC/Eth HUBs";
end  

if (tech==3)
    name_opt = name_opt + "+ LoRaWAN";
end 

if (tech==4) 
    name_opt = name_opt + "+ PLCs";
end

if (tech==5)
    name_opt = name_opt + "+ NB-IoT";
end  

if (tech==6)
    name_opt = name_opt + "+ 2G Cells";
end 
if (tech==7) 
    name_opt = name_opt + "+ 3G Cells";
end

if (tech==8)
    name_opt = name_opt + "+ SMS";
end  



end


function Ab = find_Ab(l_1, theta_dot_one, ecap_r_one)
    % help file for find_Ab
    % inputs are: length one, omega one, and the unit vector in the direction of length one
    % output is the acceleration vector for point B
    Ab = -l_1*theta_dot_one.^2*ecap_r_one;
end

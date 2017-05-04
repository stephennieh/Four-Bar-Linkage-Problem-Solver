function Vb = find_Vb(l_1, theta_dot_one, ecap_t_one)
    % help file for find_Vb
    % inputs are length one, omega one, and the normal vector in the theta
    % one direction
    % output is velocity of point B
    Vb = l_1 * theta_dot_one * ecap_t_one;
end
function [Vc, theta_dot_two] = find_Vc(ecap_t1, ecap_t2, ecap_t3, l_1, l_2, theta_dot_one)
    % help file for find_Vc
    % inputs are: unit vectors in directions of theta one, theta two, theta
    % three length one, length two, and omega one
    % outputs are: the velocity of point C and omega two

    c_2 = l_1*theta_dot_one*ecap_t1(1)/ecap_t3(1);
    c_1 = l_2*ecap_t2(1)/ecap_t3(1);
    
    theta_dot_two = (c_2*ecap_t3(2) - l_1*theta_dot_one*ecap_t1(2))/(l_2*ecap_t2(2) - c_1*ecap_t3(2));
    Vc = c_1*theta_dot_two + c_2;
end

    
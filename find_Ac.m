function [Ac, theta_double_dot_two, theta_double_dot_three] = find_Ac(l_1, l_2, l_3, theta_dot_one, theta_dot_two, theta_dot_three, ecap_r1, ecap_r2, ecap_r3,ecap_t2, ecap_t3)
    % help file for find_Ac
    % inputs include: lengths one, two and three; omega one, two and three;
    % the unit vectors in the directions of length one, length two, length
    % three, theta two, theta three
    % ourputs include: the acceleration vector of point C, alpha two, and
    % alpha three
    
    c_1 = l_2*ecap_t2/(l_3*ecap_t3);
    c_2 = (-l_1*(theta_dot_one.^2)*ecap_r1 - l_2*(theta_dot_two.^2)*ecap_r2 + l_3*(theta_dot_three.^2)*ecap_r3)/(l_3*ecap_t3);
    numerator = -l_1*(theta_dot_one.^2)*ecap_r1 - l_2*(theta_dot_two.^2)*ecap_r2 + l_3*(theta_dot_three.^2)*ecap_r3 - l_3*ecap_t3*c_2;
    denominator = c_1*l_3*ecap_t3 - l_2*ecap_t2;
    theta_double_dot_two = numerator/denominator;
    theta_double_dot_three = c_1*theta_double_dot_two + c_2;
    Ac = -l_3*(theta_dot_three.^2)*ecap_r3 + l_3*theta_double_dot_three*ecap_t3;
end
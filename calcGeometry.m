function [theta_three] = calcGeometry(l_1, l_2, l_3, d_1, t_1, t_2)
    % help file for calculate geometry
    % this function takes in the lengths of all three bars, the orientation
    % of the bases and theta one and two to calculate theta three
    % if the theta three calculated from this function does not match that
    % found by the user, the geometry provided by the user is inconsistent
    
    theta_three = acos((l_1*cos(t_1)+l_2*cos(t_2) - d_1)/l_3);    
end

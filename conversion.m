function [ecapt, ecapr] = conversion(theta)
    % help file for conversion
    % input is theta in radians
    % output is unit vectors for cylindrical coords
    ecapt = [-sin(theta) cos(theta)];
    ecapr = [cos(theta) sin(theta)];
    
end

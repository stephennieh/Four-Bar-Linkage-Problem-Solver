function [e_1, e_2] = normalize(e)
    length_e = (e(1).^2 + e(2).^2).^(1/2);
    e_1 = e(1)/length_e;
    e_2 = e(2)/length_e;
end
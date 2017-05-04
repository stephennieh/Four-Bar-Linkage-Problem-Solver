function generate_plot(l_1, l_3, d_1, d_2, t_1, t_3)
    % help file for generate_plot
    % the inputs include: length one, two, and three; the horizontal and
    % vertical distance between the bases; and theta one and theta three
    % the fuction creates the plot with the correct dimensions

    frame = 0.25;
    
    min_height = min([l_1*sin(t_1), l_3*sin(t_3) + d_2, 0, d_2]) - frame;
    max_height = max([l_1*sin(t_1), l_3*sin(t_3) + d_2, 0, d_2]) + frame;
    min_length = min([l_1*cos(t_1), l_3*cos(t_3) + d_1, 0, d_1]) - frame;
    max_length = max([l_1*cos(t_1), l_3*cos(t_3) + d_1, 0, d_1]) + frame;
    title('Four Bar Linkage Display')
    axis([min_length, max_length, min_height, max_height])
    hold on
end
    
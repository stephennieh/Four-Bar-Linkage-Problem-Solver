function plot_bars(l_1, l_3, d_1, d_2, t_1, t_3)
    % help file for plot_bars
    % inputs include: length one and three; the horizontal and vertical
    % distance between the bases; theta one and three
    % the function graphs the 4 bar linkage on the plot
    a = [0,0];
    b = [l_1*cos(t_1), l_1*sin(t_1)];
    c = [d_1 + l_3*cos(t_3), d_2 + l_3*sin(t_3)];
    d = [d_1, d_2];
    e = [d_1, 0];
    
    x = [0, l_1*cos(t_1), d_1+l_3*cos(t_3), d_1, d_1, 0];
    y = [0, l_1*sin(t_1), d_2+l_3*sin(t_3), d_2, 0, 0];
    plot(x, y, '-black', 'LineWidth',2);

    plot(0, 0, 'r^', 'MarkerSize', 8, 'MarkerFaceColor', 'r', 'MarkerEdgeColor','k')
    plot(l_1*cos(t_1), l_1*sin(t_1), 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor','k');
    plot(d_1, d_2, 'r^', 'MarkerSize', 8, 'MarkerFaceColor', 'r', 'MarkerEdgeColor','k')
    plot(d_1 + l_3*cos(t_3), d_2 + l_3*sin(t_3), 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g', 'MarkerEdgeColor','k');
    
    txtA = 'A \rightarrow  ';
    txtD = '  \leftarrow D';
    text(a(1), a(2), txtA, 'HorizontalAlignment','right'); %label point A
    
    if c(1) > b(1)
        txtB = '  B \rightarrow  ';
        txtC = '  \leftarrow C  ';
        text(b(1), b(2), txtB, 'HorizontalAlignment','right'); %label point B
        text(c(1), c(2), txtC, 'HorizontalAlignment','left');  %label point C
    else
        txtC = '  B \rightarrow  ';
        txtB = '  \leftarrow C  ';
        text(b(1), b(2), txtB, 'HorizontalAlignment','left'); %label point B
        text(c(1), c(2), txtC, 'HorizontalAlignment','right');  %label point C
    end
    
    text
    text(d(1), d(2), txtD, 'HorizontalAlignment','left');  %label point D
    
    txtL1 = 'L1  ';
    txtL2 = ' L2 ';
    txtL3 = '  L3';
    txtd1 = ' d1 ';
    txtd2 = '  d2';
    
    text(0.5*a(1)+ 0.5*b(1), 0.5*a(2) + 0.5*b(2), txtL1, 'HorizontalAlignment', 'right');
    text(0.5*b(1)+ 0.5*c(1), 0.5*b(2) + 0.5*c(2) + 0.03*l_1, txtL2, 'VerticalAlignment', 'bottom');
    text(0.5*c(1)+ 0.5*d(1), 0.5*c(2) + 0.5*d(2), txtL3, 'HorizontalAlignment', 'left');
    text(0.5*a(1)+ 0.5*e(1), 0.5*e(2) + 0.5*a(2) - 0.03*l_1, txtd1, 'VerticalAlignment', 'cap');
    if d_2 ~= 0
        text(0.5*e(1)+ 0.5*d(1), 0.5*e(2) + 0.5*d(2), txtd2, 'HorizontalAlignment', 'left');
    end
end

    
    
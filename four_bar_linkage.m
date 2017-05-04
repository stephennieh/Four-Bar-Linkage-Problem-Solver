
% CE2120 Dynamics
% Ryan Cooper
% Honors Conversion Project

clc             % clear command window
clear           % clear all variables
clf             % clear plot area

instr = instructions();

y_n = input('Would you like to read the instructions? (Y/N) ' , 's');
if y_n == 'Y'
    fprintf(instructions)
end

l_1 = input('Enter the length of bar one: ');
l_2 = input('Enter the length of bar two: ');
l_3 = input('Enter the length of bar three: ');
t_1 = input('Enter the value of theta one in radians: ');
t_2 = input('Enter the value of theta two in radians: ');
d_1 = input('Enter the horizontal distance between bases: ');
d_2 = input('Enter the vertical distance between bases: ');
theta_dot_one = input('Enter the rate of change of theta one in rad/s: ');

t_3 = calcGeometry(l_1, l_2, l_3, d_1, t_1, t_2);

fprintf('\n\n\nEstimated value of theta three = %g radians\n\n', t_3);

[ecap_t1, ecap_r1] = conversion(t_1);
[ecap_t2, ecap_r2] = conversion(t_2);
[ecap_t3, ecap_r3] = conversion(t_3);

Vb = find_Vb(l_1, theta_dot_one, ecap_t1);
[Vc, theta_dot_two] = find_Vc(ecap_t1, ecap_t2, ecap_t3, l_1, l_2, theta_dot_one);
theta_dot_three = Vc/l_3;

fprintf('The velocity vector of point B is: %5.2fi + %5.2fj\n', Vb(1), Vb(2));
fprintf('The velocity vector of point C is: %5.2fi + %5.2fj\n\n', Vc*ecap_r3(1), Vc*ecap_r3(2) );

Ab = find_Ab(l_1, theta_dot_one, ecap_r1);
Ac = find_Ac(l_1, l_2, l_3, theta_dot_one, theta_dot_two, theta_dot_three, ecap_r1, ecap_r2, ecap_r3, ecap_t2, ecap_t3);

fprintf('Omega 1 is: %5.2f\n', theta_dot_one);
fprintf('Omega 2 is: %5.2f\n', theta_dot_two);
fprintf('Omega 3 is: %5.2f\n\n', theta_dot_three);


fprintf('The acceleration vector of point B is: %5.2fi + %5.2fj\n', Ab(1), Ab(2));
fprintf('The acceleration vector of point C is: %5.2fi + %5.2fj\n\n', Ac(1), Ac(2));

generate_plot(l_1, l_3, d_1, d_2, t_1, t_3);
plot_bars(l_1, l_3, d_1, d_2, t_1, t_3)


%% FLIGHT MECHANICS - LAB I

%{
    Authors: Alejandro García & Jorge Martínez
    Data: 13/03/2019
%}

clear; clc
global p;

p = get_parameters();
u_eq = [0, acos(p(2).^-1)];

for i = 1:1

    tspan = [0 30];
    psi_0 = [u_eq(2), 0];
    %psi_0 = [rand(1), rand(1)];
    [t, psi] = ode45(@(t, psi) psi_function(t, psi, p(1), p(2)), tspan, psi_0);

    % Position and velocity along time
    figure(1)
    plot(t, psi(:,1), 'b', t, psi(:,2), 'r');
    hold on
    legend('Angle', 'Velocity');
    title("Evolution of system along time")
    xlabel('Time')

    % Phase portrait of system and actual path
    [x, y] = meshgrid(-1.5:0.1:1.5, -1.5:0.1:1.5);
    psi_x = y;
    psi_y = p(1) * (p(2) * cos(x) - 1) * x;

    figure(2)
    quiver(x, y, psi_x, psi_y, 'b')
    hold on
    plot(psi(:,1), psi(:,2))
    title('Phase portrait')

end

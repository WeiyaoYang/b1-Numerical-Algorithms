clc; clear; close all;

omega = 2.0;
phi   = pi/6;
T     = 2*pi;
h_values = [0.2 0.1 0.05 0.025 0.0125];
err_euler = zeros(size(h_values));
err_rk4   = zeros(size(h_values));

y0 = sin(phi);
v0 = omega*cos(phi);
Y0 = [y0; v0];
V0 = @(t,Y) [Y(2); -omega^2 * Y(1)];


for i = 1:length(h_values)
    h = h_values(i);
    t = 0:h:T;

    Y_euler = euler_method(V0, Y0, t, h);
    Y_rk4 = rk4_method(V0, Y0, t, h);

    y_true = sin(omega*t + phi);
    err_euler(i) = max(abs(Y_euler(1,:) - y_true));
    err_rk4(i)   = max(abs(Y_rk4(1,:)   - y_true));
end

plot_error_loglog(h_values, err_euler, err_rk4);

clc; clear; close all;

T = 2*pi; dt = 0.001;
omega = 2.0; phi = pi/6; sigma = 0.01;
condV = zeros(1,10);
err = zeros(1,10);

[t, y, y_true] = generate_signal(dt, T, omega, phi, sigma);
t_scaled = (t - mean(t)) / std(t);

for n = 1:10
    p = polyfit(t_scaled,y,n);
    y_fit = polyval(p,t_scaled);
    V = vander(t_scaled);
    V = V(:, end-n:end);
    condV(n) = cond(V' * V);
    p_deriv = polyder(p);
    y_deriv = polyval(p_deriv, t_scaled) / std(t);
    err(n) = sqrt(mean((y_deriv - y_true).^2));
end

figure;
semilogy(1:10, condV, '-o')
xlabel('Polynomial degree')
ylabel('Condition number cond(V''V)')
title('Condition vs polynomial degree')

figure;
semilogy(1:10, err, '-o');
xlabel('Polynomial degree');
ylabel('L_2 error of derivative');
title('Derivative L_2 Error vs Polynomial Degree');

report_table('PartB_Condition_Report.txt', 1:10, condV, err);
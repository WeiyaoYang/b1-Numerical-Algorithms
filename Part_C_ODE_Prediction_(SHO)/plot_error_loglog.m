function plot_error_loglog(h_values, err_euler, err_rk4)
figure;
loglog(h_values, err_euler, '-o'); 
hold on;
loglog(h_values, err_rk4, '-s');
legend('Euler','RK4','Location','northwest');
xlabel('Step size h');
ylabel('Global error');
title('Global Error vs Step Size (Euler vs RK4)');
grid on;
end

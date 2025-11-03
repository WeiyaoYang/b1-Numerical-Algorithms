clc; clear; close all;

T = 2*pi; dt = 0.001;
omega = 2.0; phi = pi/6; sigma = 0.01;
k = [1 2 4 8 16 32 64 128];

[t, y, y_true] = generate_signal(dt, T, omega, phi, sigma);

err_fwd = zeros(1, length(k));
err_bwd = zeros(1, length(k));
err_cd = zeros(1, length(k));
h = zeros(1, length(k));

for i = 1:length(k)
    [err_fwd(i), err_bwd(i), err_cd(i), h(i)] = numerical_diff(y, y_true, dt, k(i));
end

plot_error_loglog(h, err_fwd, err_bwd, err_cd);
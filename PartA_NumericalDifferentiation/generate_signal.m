function [t, y, y_true] = generate_signal(dt, T, omega, phi, sigma)
    rng(1);
    t = 0:dt:T;
    y_clean = sin(omega*t + phi);
    y = y_clean + sigma*randn(size(t));
    y_true  = omega * cos(omega*t + phi);
end
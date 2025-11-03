function [err_fwd, err_bwd, err_cd, h] = numerical_diff(y, y_true, dt, k)
    h = k * dt;
    y_sub = y(1:k:length(y));
    y_true_sub = y_true(1:k:length(y));

    fwd = (y_sub(2:end) - y_sub(1:end-1)) / h;
    bwd = (y_sub(2:end) - y_sub(1:end-1)) / h;
    cd = (y_sub(3:end) - y_sub(1:end-2)) / (2*h);

    err_fwd = sqrt(mean((y_true_sub(1:end-1) - fwd).^2));
    err_bwd = sqrt(mean((y_true_sub(2:end) - bwd).^2));
    err_cd = sqrt(mean((y_true_sub(2:end-1) - cd).^2));
end
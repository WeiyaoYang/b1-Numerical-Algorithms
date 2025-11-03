function plot_error_loglog(h, err_fwd, err_bwd, err_cd)
    figure;
    loglog(h, err_fwd, '-o', ...
           h, err_bwd, '-s', ...
           h, err_cd, '-^');
    legend('Forward','Backward','Central','Location','best');
    xlabel('Step size h');
    ylabel('Mean Square errors');
    title('Error vs Step Size');
    grid on;
end
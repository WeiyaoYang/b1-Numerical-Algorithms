function report_table(filename, degree, condV, err)
    if length(degree) ~= length(condV) || length(degree) ~= length(err)
        error('Input vectors degree, condV, and err must have the same length.');
    end

    fprintf('\n%-10s %-20s %-15s\n','Degree','cond(V''V)','L2 Error');
    fprintf('-----------------------------------------------------------\n');

    for i = 1:length(degree)
        fprintf('%-10d %-20.3e %-15.3e\n', degree(i), condV(i), err(i));
    end

    fprintf('-----------------------------------------------------------\n');

    if ~isempty(filename)
        fid = fopen(filename, 'w');
        fprintf(fid, '%-10s %-20s %-15s\n','Degree','cond(V''V)','L2 Error');
        fprintf(fid, '-----------------------------------------------------------\n');
        for i = 1:length(degree)
            fprintf(fid, '%-10d %-20.3e %-15.3e\n', degree(i), condV(i), err(i));
        end
        fprintf(fid, '-----------------------------------------------------------\n');
        fclose(fid);
        fprintf('Report saved to %s\n', filename);
    end
end

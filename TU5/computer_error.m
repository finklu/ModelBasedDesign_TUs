function [abs_error, mean_abs_error, rel_error, mean_rel_error] = computer_error(y_exact, y_num)
    % Absolute error
    abs_error = abs(y_exact - y_num);

    % Average absolute error
    mean_abs_error = mean(abs_error);

    % Relative error in percentage
    rel_error = 100 * abs_error ./ max(abs(y_exact), eps);

    % Average relative error
    mean_rel_error = mean(rel_error);
end

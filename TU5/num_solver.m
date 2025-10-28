function [t, y_num] = num_solver(y0, tau, h, t0, t_final)
    % Compute number of steps
    N = round((t_final - t0)/h);
    
    % Preallocate vectors
    t = t0:h:t_final;
    y_num = zeros(1, N+1);
    
    % Initial condition
    y_num(1) = y0;
    
    % Euler integration loop
    for n = 1:N
        y_num(n+1) = y_num(n) + h * (-y_num(n)/tau);
    end
end

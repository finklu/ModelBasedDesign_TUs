function [t, y_num] = num_solver(y0, tau, h, t0, t_final)
    % Compute number of steps
    N = floor((t_final - t0)/h);
    
    % Preallocate vectors
    t = t0 + (0:N)*h;        
    y_num = zeros(1, N+1);   
    
    % Initial condition
    y_num(1) = y0;
    
    % Euler integration loop
    for n = 1:N
        y_num(n+1) = y_num(n) + h * (-y_num(n)/tau);
    end
end

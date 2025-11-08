function [t_values, y_values, h_values] = variable_step_solver(y0, tau, t0, t_final, r)

% Initial values
t = t0;
y = y0;
h = 0.5;  % init step size
h_min = 1e-6;
h_max = 1;

f = @(t, y) -y / tau;

t_values = t;
y_values = y;
h_values = [];

while t < t_final
    if t + h > t_final
        h = t_final - t;
    end

    % Forward Euler
    k1_fe = f(t, y);
    y_euler = y + h * k1_fe;

    % Mid-Point
    k1_mp = f(t, y);
    y_mid_pred = y + (h/2) * k1_mp;
    k2_mp = f(t + h/2, y_mid_pred);
    y_mp = y + h * k2_mp;

    eps = abs(y_mp - y_euler);

    % Avoid division by zero if error is extremely small
    eps_used = max(eps, 1e-12);

    % Calculate the new step size 
    h_new = h * (r / eps_used); 

    % Step-size control
    if eps_used <= r
        t = t + h;
        y = y_mp;
        t_values(end+1) = t;
        y_values(end+1) = y;
        h_values(end+1) = h;

        h = min(h_new, h_max);
    else

        h = max(h_new, h_min);
    end
end

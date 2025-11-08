function [t, y_mid] = midpoint_solver(y0, tau, h, t0, t_final)

% Compute number of steps
N = floor((t_final - t0)/h);

% Preallocate vectors
t = t0 + (0:N)*h;
y_mid = zeros(1, N+1);

f = @(t, y) -y / tau;

% Initial conditions
y_mid(1) = y0;

% Mid-Point Method (RK2) Loop
for k = 1:N
    k1 = f(t(k), y_mid(k));
    k2 = f(t(k) + h/2, y_mid(k) + (h/2)*k1);
    y_mid(k+1) = y_mid(k) + h * k2;
end

end

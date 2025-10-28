function y_exact = exact_solver(y0, tau, t)
    y_exact = y0 * exp(-t / tau);
end

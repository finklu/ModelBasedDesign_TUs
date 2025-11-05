function nthFiboNum = fibonacciCalculation(n)
    arguments
        n (1,1) {mustBeNumeric, mustBeNonnegative, mustBeInteger}
    end

    if n == 0
        nthFiboNum = 0;
        return;
    elseif n == 1
        nthFiboNum = 1;
        return;
    end

    nthFiboNum = fibonacciCalculation(n-1) + fibonacciCalculation(n-2);
end

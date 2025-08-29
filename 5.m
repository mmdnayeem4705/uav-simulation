% Main Script
n = input('Enter a number: ');
result = factorial_func(n);
fprintf('Factorial of %d is %d\n', n, result);

% Function definition
function f = factorial_func(n)
    if n == 0 || n == 1
        f = 1;
    else
        f = n * factorial_func(n-1);
    end
end

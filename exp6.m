% Define a 2D matrix
A = [1 2 3; 4 5 6; 7 8 9];

% Display the matrix
disp('Here is the 2D matrix:')
disp(A)

% Or use fprintf for formatted printing
fprintf('Formatted matrix:\n');
for i = 1:size(A, 1)
    for j = 1:size(A, 2)
        fprintf('%d\t', A(i, j));
    end
    fprintf('\n');
end

% Create a vector of x values ranging from 0 to 2*pi with step size 0.01
x = 0:0.01:2*pi;    

% Compute the sine of the x values
y = sin(x);          

% Plot y versus x
plot(x, y, 'b', 'LineWidth', 2);  

% Add title and axis labels
title('Sine Function');    
xlabel('x');               
ylabel('y = sin(x)');      

% Add grid for clarity
grid on;

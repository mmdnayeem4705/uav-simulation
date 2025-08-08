% Autonomous 3D Drone Simulation with Obstacle Avoidance

% Simulation parameters
t = linspace(0, 50, 1000);
dt = t(2) - t(1);

% Drone's initial position
pos = [0, 0, 0];

% Destination
target = [10, 10, 10];

% Obstacle (a static sphere)
obstacle_center = [5, 5, 5];
obstacle_radius = 2;

% Plot setup
figure;
axis([-2 12 -2 12 -2 12]);
xlabel('X'); ylabel('Y'); zlabel('Z');
grid on;
view(45, 30);
hold on;

% Plot target and obstacle
plot3(target(1), target(2), target(3), 'g*', 'MarkerSize', 10);
[sx, sy, sz] = sphere(20);
surf(obstacle_radius*sx + obstacle_center(1), ...
     obstacle_radius*sy + obstacle_center(2), ...
     obstacle_radius*sz + obstacle_center(3), ...
     'FaceAlpha', 0.3, 'EdgeColor', 'none', 'FaceColor', 'r');

% Plot drone marker
drone = plot3(pos(1), pos(2), pos(3), 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b');

% Movement simulation loop
for i = 1:length(t)
    % Vector toward target
    direction = target - pos;
    direction = direction / norm(direction);  % Normalize
    
    % Vector away from obstacle (repulsive)
    vec_to_obstacle = pos - obstacle_center;
    dist_to_obstacle = norm(vec_to_obstacle);
    
    if dist_to_obstacle < obstacle_radius + 1.5
        repulsion = vec_to_obstacle / dist_to_obstacle^2;
    else
        repulsion = [0, 0, 0];
    end
    
    % Final movement direction (attractive + repulsive)
    velocity = direction + repulsion;
    velocity = velocity / norm(velocity) * 0.1;  % Scale speed

    % Update position
    pos = pos + velocity;
    
    % Update plot
    set(drone, 'XData', pos(1), 'YData', pos(2), 'ZData', pos(3));
    pause(0.01);
    
    % Stop when close to target
    if norm(target - pos) < 0.2
        break;
    end
end

title('Autonomous Drone Simulation with Obstacle Avoidance');

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
     'FaceAlpha',

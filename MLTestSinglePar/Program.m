clear;

#input data
fprintf('Inputing X an y data...\n');
fprintf('Press enter to continue...\n');
pause;
load('inputData.txt');
X = [ones(25, 1), inputData(:, 1)];
y = [inputData(:, 2)];

#plot data
fprintf('Plotting data...\n');
fprintf('Press enter to continue...\n');
pause;
figure(1);
plot(X(:, 2), y, 'rx', 'MarkerSize', 10);
ylabel('Y');
xlabel('X');

#gradient descent settings
fprintf('Press enter to continue to calculation of model...\n');
pause;

iterations = 50000;
alpha = 0.001;
theta = zeros(2, 1);

#initial cost
J = CostFunction(X, y, theta);
fprintf('initial cost = %f\n ', J);

#further testing
J = CostFunction(X, y, [-1 ; 2]);
fprintf('further testing = %f\n ', J);
fprintf('Press enter to continue...\n');
pause;

#run gradient descent
theta = gradientDescent(X, y, theta, alpha, iterations);
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);
fprintf('Press enter to continue...\n');
pause;

#plot linear fit
figure(1);
hold on;
plot(X(:, 2), X * theta, '-')
legend('Training data', 'Linear regression')
hold off


fprintf('Visualizing J(theta_0, theta_1) ...\n')

% Grid over which we will calculate J
theta0_vals = linspace(-50, 50, 100);
theta1_vals = linspace(-5, 15, 100);

% initialize J_vals to a matrix of 0's
J_vals = zeros(length(theta0_vals), length(theta1_vals));

% Fill out J_vals
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
	  t = [theta0_vals(i); theta1_vals(j)];
	  J_vals(i,j) = CostFunction(X, y, t);
    end
end

% Because of the way meshgrids work in the surf command, we need to
% transpose J_vals before calling surf, or else the axes will be flipped
J_vals = J_vals';
% Surface plot
figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');

% Contour plot
figure;
% Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
contour(theta0_vals, theta1_vals, J_vals, logspace(-1, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);

% Predict values for sizes of 3,5 and 7
predict1 = [1, 3.5] *theta;
fprintf('For value = 3,5, we predict a value of %f\n', predict1);
predict2 = [1, 7] * theta;
fprintf('For value = 7, we predict a value of %f\n', predict2);

fprintf('Program finished. Press enter to continue.\n');
pause;
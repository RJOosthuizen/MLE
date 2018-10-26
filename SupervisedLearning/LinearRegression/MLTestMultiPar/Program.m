clear;
# load data
load('ex1data2.txt');
X = ex1data2(:, 1:2);
y = ex1data2(:, 3);
m = length(y);

fprintf('loaded data...\n');
fprintf('first 10 records of dataset:\n'); 
fprintf('X = [%.0f %.0f], y = %.0f \n', [X(1:10, :) y(1:10, :)]');

fprintf('Program paused. Press enter to continue.\n');
pause;

#feature normalize
fprintf('Normalizing Features ...\n');
[X mu sigma] = featureNormalize(X);
fprintf('Adding  ones to X...\n');
X = [ones(m, 1) X];
fprintf('first 10 records of new dataset:\n'); 
fprintf('X = [%.0f %f %f], y = %.0f \n', [X(1:10, :) y(1:10, :)]');


#Gradient descent
alpha = 0.03;
num_iters = 1000;
theta = zeros(size(X, 2), 1);

fprintf('Program paused. Press enter to run gradient descent.\n');
pause;
fprintf('Running gradient descent ...\n');

[theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters);

#Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

#Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');


#Predict random value

fprintf('test for value 1650 and 3\n')
#remember to normalize random values
total = ([1650 3] - mu) ./ sigma;
total = [1, total] * theta


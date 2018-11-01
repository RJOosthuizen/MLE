clear;
#load data

load('DataFile.txt');

X = DataFile(:, 1:2);
y = DataFile(:, 3);
#semi feature scaling to get to a .59 instead of 59
X = X ./ 100;

#plot initial data

fprintf(['Plotting data with + indicating (y = 1) examples and o indicating (y = 0) examples.\n']);

plotData(X, y);

hold on; #keep figure
xlabel('x1');
ylabel('x2');
legend('y = 1', 'y = 0');
hold off;

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

#regularized logistic regression
#Add Polynomial Features
#Note that mapFeature also adds a column of ones for us, so the intercept
#term is handled
X = mapFeature(X(:,1), X(:,2));

#initialize
initial_theta = zeros(size(X, 2), 1);
lambda = 1;

#Compute and display initial cost and gradient for regularized logistic regression
[cost, grad] = costFunctionReg(initial_theta, X, y, lambda);

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Gradient at initial theta (zeros) - first five values only:\n');
fprintf(' %f \n', grad(1:5));

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

#Compute and display cost and gradient
#with all-ones theta and lambda = 10
test_theta = ones(size(X,2),1);
[cost, grad] = costFunctionReg(test_theta, X, y, 10);

fprintf('\nCost at test theta (with lambda = 10): %f\n', cost);
fprintf('Gradient at test theta - first five values only:\n');
fprintf(' %f \n', grad(1:5));

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

#Regularization and Accuracies

#Initialize fitting parameters
initial_theta = zeros(size(X, 2), 1);
#Set regularization parameter lambda to 1 (you should vary this)
lambda = 0.1;
#Set Options
options = optimset('GradObj', 'on', 'MaxIter', 400);
#Optimize
[theta, J, exit_flag] = fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);

#Compute accuracy on our training set
#do this before plot to show accuracy in figure
p = predict(theta, X);

fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);
finalAccuracy = mean(double(p == y)) * 100;


#Plot Boundary
plotDecisionBoundary(theta, X, y);
hold on;
title(sprintf('lambda = %g, Accuracy = %g', lambda, finalAccuracy))
xlabel('x1')
ylabel('x2')
legend('y = 1', 'y = 0', 'Decision boundary')
hold off;


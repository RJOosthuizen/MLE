clear;
#import data

load('DataFile.txt');
X = DataFile(:, 1:2);
y = DataFile(:, 3);

#plot data
fprintf(['Plotting data with + indicating (y = 1) examples and o indicating (y = 0) examples.\n']);

plotData(X, y);
hold on; #keep figure

xlabel('Scenario 1 score');
ylabel('Scenario 2 score');
legend('positive(1)', 'negative(0)');
hold off;

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

#Compute gradient + cost
#initialize
[m, n] = size(X);
X = [ones(m, 1) X];
initial_theta = zeros(n + 1, 1); # X = 25 x 2, added 1's so 25 x 3, therefore n+1 = 3 and theta = 3 x 1

#compute + display initial cost and gradient
[cost, grad] = costFunction(initial_theta, X, y);

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);

#compute and display non zero theta
test_theta = [-24; 0.2; 0.2];
[cost, grad] = costFunction(test_theta, X, y);

fprintf('\nCost at test theta: %f\n', cost);
fprintf('Gradient at test theta: \n');
fprintf(' %f \n', grad);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;
clear;

#load data
load('ex1data2.txt');
X = [ex1data2(:, 1:2)];
y = [ex1data2(:, 3)];

fprintf('first 10 values are\n');
[X(1:10, :) y(1:10, :)]

fprintf('Program pause. Press enter to continue.\n');
pause;

#Initialize + add ones to X
m = length(y);
X = [ones(m, 1) X]; 

fprintf('New 10 values with ones are\n');
[X(1:10, :) y(1:10, :)]

fprintf('Program pause. Press enter to continue.\n');
pause;

#Use normal equation

theta = normalEqn(X, y);

fprintf('theta computed from the normal equations: \n');
fprintf('%f\n', theta);
fprintf('\n');
fprintf('Program pause. Press enter to continue.\n');
pause;

#predict random values
total = [1 1650 3] * theta;

fprintf('predicted value for 1650 and 3 is\n');
total
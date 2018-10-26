function [theta J_history] = gradientDescent(X, y, theta, alpha, num_iters)

#Initialize
m = length(y);
J_history = zeros(num_iters, 1);

#Calculate
for iter = 1:num_iters

theta = theta - (alpha * 1 / m) * (X' * (X * theta - y));
fprintf('gradient %f\n', theta);

J_history(iter) = costFunction(X, y, theta);
fprintf('cost function: %f\n', J_history(iter));

end
endfunction
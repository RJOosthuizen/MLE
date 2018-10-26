function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

    m = length(y);
    J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    theta = theta - (alpha * 1 / m) * (X' * (X * theta - y));
    fprintf('gradient: %f\n', theta);
    #fprintf('number: %f\n', iter);

    J_history(iter) = CostFunction(X, y, theta);
    fprintf('cost function: %f\n', J_history(iter));


end
figure(2);
plot(1:1:num_iters, J_history);
xlabel('Iterations');
ylabel('cost \theta(J)');
title('gradient descent over iterations');

endfunction
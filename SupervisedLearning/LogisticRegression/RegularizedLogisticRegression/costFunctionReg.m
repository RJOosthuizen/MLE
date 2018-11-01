function [J, grad] = costFunctionReg(theta, X, y, lambda)

m = length(y); #number of training examples

#initialize
J = 0;
grad = zeros(size(theta));

# cost function
J = (-1 / m) * [(y' * log(sigmoid(X * theta))) + ((1 - y') * log(1 - sigmoid(X * theta)))] ...
    + (lambda / (2 * m)) * (sum(theta(2:end) .^ 2));

#gradient (not descent)
thetaZero = (1 / m ) * (X' * (sigmoid(X * theta) - y));
thetaZero = thetaZero(1);
grad = (1 / m ) * (X' * (sigmoid(X * theta) - y)) + ((lambda / m) * theta);
grad(1) = thetaZero;

endfunction
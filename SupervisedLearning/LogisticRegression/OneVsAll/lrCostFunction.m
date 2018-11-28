function [J, grad] = lrCostFunction(theta, X, y, lambda)
 

# Initialize
m = length(y); # number of training examples
J = 0;
grad = zeros(size(theta));


#calculate

#cost
J = (-1 / m) * sum(y.*log(sigmoid(X * theta)) + (1 - y).*log(1 - sigmoid(X * theta))) ...
 + (lambda / (2 * m)) * (sum(theta(2:end) .^ 2));

#grad
thetaZero = (1 / m ) * (X' * (sigmoid(X * theta) - y));
thetaZero = thetaZero(1);
grad = (1 / m ) * (X' * (sigmoid(X * theta) - y)) + ((lambda / m) * theta);
grad(1) = thetaZero;


grad = grad(:);

end

function [J, grad] = costFunction(theta, X, y)

#initialize
m = length(y);
J = 0;
grad = zeros(size(theta));

#costFunction
J = (-1 / m) * [(y' * log(sigmoid(X * theta))) + ((1 - y') * log(1 - sigmoid(X * theta)))];

#gradient not descent
grad = (1 / m ) * (X' * (sigmoid(X * theta) - y));

endfunction

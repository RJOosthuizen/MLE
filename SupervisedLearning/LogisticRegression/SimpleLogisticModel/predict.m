function p = predict(theta, X)

#initialize
m = size(X, 1); # Number of training examples
p = zeros(m, 1);

#calculate whether 1 or 0
p = round(sigmoid(X * theta));

end

function J = costFunction(X, y, theta)

#Initialize
m = length(y);
J = 0;

#Calculate
J = sum((X * theta - y) .^ 2) / (2 * m); 

endfunction
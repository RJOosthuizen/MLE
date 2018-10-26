function [theta] = normalEqn(X, y)

#Initialize
theta = zeros(size(X, 2), 1);

#Calculate
theta = pinv(X' * X) * X' * y;

endfunction
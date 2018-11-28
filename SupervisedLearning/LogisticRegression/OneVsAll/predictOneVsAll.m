function p = predictOneVsAll(all_theta, X)

#initialize
m = size(X, 1);
num_labels = size(all_theta, 1);

p = zeros(size(X, 1), 1);

# Add ones to the X data matrix
X = [ones(m, 1) X];


[probability indices] = max(sigmoid(all_theta * X'));
p = indices';

end

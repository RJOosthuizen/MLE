function g = sigmoid(z)

#initialize
g = zeros(size(z));

#sigmoid function
g = 1 ./ (1 + e .^ -z);

endfunction
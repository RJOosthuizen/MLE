function plotDecisionBoundary(theta, X, y)

plotData(X(:,2:3), y);
hold on;

if size(X, 2) <= 3
    # Only need 2 points to define a line, so choose two endpoints
    plot_x = [min(X(:,2))-2,  max(X(:,2))+2];

    # Calculate the decision boundary line
    plot_y = (-1./theta(3)).*(theta(2).*plot_x + theta(1));

    # Plot, and adjust axes for better viewing
    plot(plot_x, plot_y)
    
    # Legend, specific for the exercise
    legend('positive', 'negative', 'Decision Boundary')
    axis([0, 100, 0, 100])
else
    # Here is the grid range
    u = linspace(0, 1);
    v = linspace(0, 1);

    z = zeros(length(u), length(v));
    # Evaluate z = theta*x over the grid
    for i = 1:length(u)
        for j = 1:length(v)
            z(i,j) = mapFeature(u(i), v(j))*theta;
        end
    end
    z = z'; # important to transpose z before calling contour

    # Plot z = 0
    # Notice you need to specify the range [0, 0]
    contour(u, v, z, [0, 0], 'LineWidth', 2)
end
hold off;

endfunction

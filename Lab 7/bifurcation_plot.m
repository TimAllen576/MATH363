function bifurcation_plot


for r=-50
% Time span for the solution
Tspan = [0 10];

    for x0 = [-5, 0, 5]
    
    % Solve it
    [t,x] = ode23t(@(t,x)l7q3(t, x, r),Tspan,x0);
    
    % Plot solutions for x, y and z against t
    plot(t,x)
    legend('x', 'y')
    xlabel('t')
    hold on
    end

end

end
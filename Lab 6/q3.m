function q3

% Solve a 2D dynamical systems and plot solution as time series and in phase space 

% Initial conditions and solve
for r=-1/4

x0 = -1;

% Time span for the solution
Tspan = [0 10];

% Solve it
[t,x] = ode23t(@(t,x)RHSodes(t,x, r),Tspan,x0);

% Plot solutions for x, y and z against t
figure
plot(t,x)

legend('x')
xlabel('t')
end
end


function fdot = RHSodes(t, x, r)

% q3

fdot = r.*x + x.^3 - x.^5;
end
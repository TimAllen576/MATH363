function SolveDEs3(mu)

% Same as SolveDEs2, but solve for a longer period of time and also plot the solution in the phase plane

% Initial conditions
x0 = [0.5 -1];

% Time span for the solution
Tspan = [0 100];

% Solve it
[t,x] = ode23t(@(t,x)RHSodes(t,x,mu),Tspan,x0);

figure(1)
plot(t,x(:,1),'b',t,x(:,2),'r')
legend('x', 'y')
xlabel('t')

figure(2)
plot(x(:,1),x(:,2))
xlabel('x')
ylabel('y')

end

function f = RHSodes(t,x,mu)
% Function defining the RHS of the ODEs - the parameter mu is an input argument to this function


f = zeros(2, 1);
f(1) = mu*(x(1) - x(1)^3/3 - x(2));
f(2) = x(1)/mu;

end
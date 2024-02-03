function Solve2Dsystem

% Solve a 2D dynamical systems and plot solution as time series and in phase space 

% Initial conditions and solve
Sigma = 10;
Beta = 8/3;
Rho = 28;
x0 = [1, 1];

% Time span for the solution
Tspan = [0 10];

% Solve it
[t,x] = ode23t(@(t,x)RHSodes(t,x, Sigma, Beta, Rho),Tspan,x0);

% Plot solutions for x, y and z against t
figure(1)
plot(t,x)
legend('x', 'y')
xlabel('t')

% Plot solution in 3D phase space
%figure(2)
%comet3(x(:,1),x(:,2),x(:,3))
%xlabel('x')
%ylabel('y')


end


function f = RHSodes(t, x, Sigma, Beta, Rho)

% Lorenz system

f = zeros(3, 1);
f(1) = Sigma*(x(2)-x(1));
f(2) = x(1)*(Rho-x(3))-x(2);
f(3) = x(1)*x(2) - Beta*x(3);
end
function f = Lorentzsys(x, Sigma, Beta, Rho)

% Lorenz system

f = zeros(3, 1);
f(1) = Sigma*(x(2)-x(1));
f(2) = x(1)*(Rho-x(3))-x(2);
f(3) = x(1)*x(2) - Beta*x(3);
end
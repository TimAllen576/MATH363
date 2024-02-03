function FixedPoint2Dsystem

% Solve a 2D dynamical systems and plot solution as time series and in phase space 

% Initial conditions and solve
Sigma = 10;
Beta = 8/3;
Rho = 28;

fun = @(x)Lorentzsys(x, Sigma, Beta, Rho);
x0 = [1,10, 1];
x = fsolve(fun,x0);
disp(x);
end



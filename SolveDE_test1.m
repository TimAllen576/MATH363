function SolveDE_test1

% Matlab function to solve a 1D dynamic system of the form dx/dt = f(x) with initial condition x(0)=x0 and plot the solution x(t) against t

% Initial condition
lsx0 = [-4 -1 1 4];

% Time span for the solution
tSpan = [0 1];
%x = linspace(-3, 4);
% Solve it
%y= RHSode_dev(x);

for x0 = lsx0
    [x, y] = ode23(@(t, x)RHSode(t, x), tSpan, x0);

figure(find(lsx0 == x0))
plot(x, y)
ylabel('x')
xlabel('t')
grid()
end
end


function f = RHSode(t, x)
% Example f(x) = 1-4*x*exp(-x^2)

f = -x.*(x-3).*(x+2);

end

function f = RHSode_dev(x)
% Example f(x) = 1-4*x*exp(-x^2)

f = -3*(x^2)+2*(x)+6;

end

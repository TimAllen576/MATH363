function SolveDE2

% Matlab function to solve a 2D dynamic system of the form dx/dt = f(x) with initial condition x(0)=x0 and plot the solution in the phase plane

% Initial condition
x0 = [2; 0];

% Time span for the solution
tSpan = [0 10];

% Solve it
[t, x] = ode23(@(t, x)RHSode(t, x), tSpan, x0);

figure(1)
plot(x(:, 1), x(:, 2))
xlabel('x')
ylabel('y')

end





function f = RHSode(t, x)
% Example f(x) = [ y - x^2 + 1  ]
%                [ x - y        ]

f = [ - x(2)^3 + 6 * x(2)^2 - 8 * x(2);
      x(1) - x(2) - 1];

end

% function f = RHSode(t, x)
% % Example f(x) = [ y - x^2 + 1  ]
% %                [ x - y        ]
% 
% f = [ x(2) - x(1)^2 + 1;
%       x(1) - x(2)];
% 
% end
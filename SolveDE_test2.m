function SolveDE_test2

x = linspace(-5, 5);
y= RHSode(x);

plot(x, y)
ylabel('x')
xlabel('t')
grid()

end

function f = RHSode(x)
% Example f(x) = 1-4*x*exp(-x^2)

f = sin(x) -1;

end
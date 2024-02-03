function f = Lotka_Volterra(x)
% two lotka volterra eqs as given in lab
% Lotka-Volterra


f(1) = x(1)(3-x(1)-2*x(2));
f(2) = x(2)*(2-x(2)-x(1));
end
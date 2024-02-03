function dx = forcedvdp(t,x,mu)
%I have no idea how it works
dx=[x(2);-x(1)+mu*x(2)*(1-x(1)^2)+0.1*sin(t/2)];
end
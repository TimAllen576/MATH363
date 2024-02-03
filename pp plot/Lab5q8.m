function [ xdot ] = Lab5q8( t,x )

if nargin==1
    x=t;
end
xdot(1,1)=x(1)*x(2);
xdot(2,1)=x(1)^2-x(2); %for mu=2
end
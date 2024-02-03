figure
f1 = @Lab5q1a;
fimplicit(f1,':r')

hold on
f2 = @Lab5q2b;
fimplicit(f2,'--g','LineWidth',2)
grid()
hold off

figure
f3 = @(x,y) 1-x.*y;
fimplicit(f3,':r')

hold on
f4 = @(x,y) (x-1).*y;
fimplicit(f4,'--g','LineWidth',2)
grid()
hold off

figure
f5 = @(x,y) -6.*y+2.*x.*y-8;
fimplicit(f5,':r')

hold on
f6 = @(x,y) y.^2-x.^2;
fimplicit(f6,'--g','LineWidth',2)
grid()
hold off

figure
f7 = @(x,y) y+y.^2;
fimplicit(f7,':r')
xlim([-20 20])
ylim([-10 10])

hold on
f8 = @(x,y) -x+y./5 - x.*y + (6.*y.^2)./5;
fimplicit(f8,'--g','LineWidth',2)
grid()
hold off
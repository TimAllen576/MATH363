function Assignment1

% Female performance perception
Pf = 0.1;

% Homophily threshold
lambda = 10;

% General attrition
mu = 0.02;

% Homophily attrition
muH = 0.05;

% Anual salary increase ------------------
Raise = 0.02;



% Draw homophily function
figure(1)
F = linspace(0,1,100);
M = 1;
h = Homophily(F,M,lambda);
x = 1-F/M;
plot(x,h)
xticks([0 0.5 1])
xticklabels({'Parity (x=0, F=M)','1/3 women (x=0.5)','All men (x=1, F=0)'})
ylabel('Homophily function h(x)')
drawnow

% Starting values------------------
F = 100;
M = 120;
SF = 50;
SM = 50;

TSpan = [25 65];
[t,y] = ode23t(@(t,y)RHS(t,y,Pf,lambda,mu,muH,Raise),TSpan(1):TSpan(end),[SF,SM,F,M]);

figure(2)
subplot(2,2,1)
plot(t,y(:,2),'b-',t,y(:,1),'r-')
ylabel('Annual Salary ($NZ 1000s)')
xlim(TSpan)
xlabel('Age')

subplot(2,2,2)
plot(t,(y(:,2)-y(:,1))./y(:,2),'k-')
ylabel('Gender pay gap')
xlim(TSpan)
xlabel('Age')
ylim([0 0.5])

subplot(2,2,3)
plot(t,y(:,3),'r-',t,y(:,4),'b-')
ylabel('Number in cohort')
xlim(TSpan)
xlabel('Age')

subplot(2,2,4)
plot(t,y(:,3)./(y(:,3)+y(:,4)),'k-')
ylabel('Proportion(Female)')
ylim([0 0.55])
xlim(TSpan)
xlabel('Age')

end

function dy = RHS(t,y,P,lambda,mu,muH,Raise)

SF = y(1);
SM = y(2);

F = y(3);

M = y(4);

NHomophily = Homophily(F,M,lambda);

SFdot = (P*Raise)*SF;
SMdot = (Raise)*SM;

Fdot = -mu*F - muH*NHomophily*F;
Mdot = -mu*M;


dy = [SFdot; SMdot; Fdot; Mdot];

end

function h = Homophily(F,M,lambda)

x = 1-F/M;
h = (1-exp(-lambda*x))./(1+exp(-lambda*x));

end
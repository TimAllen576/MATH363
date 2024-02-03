icond={[0 1]};
tspan=[0,10];
Xlim=[-5,5]; Ylim=[-5,5];
figure;
PhasePlane(@Lab5q8,tspan,icond,'Xlim',Xlim,'Ylim',Ylim,'hx',0.5,'hy',0.5,'scale',2,'PlotSingularPoints',true);

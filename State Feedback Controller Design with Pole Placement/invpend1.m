%INVERTED PENDULUM PLOT WITH POLE PLACEMENT

clc;

close all;
t=linspace(0,2,200);
x0=[2 2 0 0];
[t,x]=ode45('inverted2_pend',t,x0);
plot(t,x);
legend('angular displacement','angular velocity',' displacement',' velocity');
grid on;

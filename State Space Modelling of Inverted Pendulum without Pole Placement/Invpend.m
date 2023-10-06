%INVERTED PENDULUM PLOT WITHOUT POLE PLACEMENT

clc;
close all;
clear all;
t=linspace(0,20,200);
x0=[2 2 2 2];
[t,x]=ode45('inverted_pend',t,x0);
f =[t,x];
subplot(4,1,1);
plot(t,x(:,1),'linewidth',1,'color','b');
title('angular displacement');
xlabel('time');
ylabel('angular displacement');
grid on;
hold on;
subplot(4,1,2);
plot(t,x(:,2),'lineWidth',1,'color','g');
title('angular velocity');
xlabel('time');
ylabel('angular velocity');
grid on;
hold on;
subplot(4,1,3);
plot(t,x(:,3),'linewidth',1,'color','r');
title('displacement');
xlabel('time');
ylabel('displacement');
grid on;
hold on;
subplot(4,1,4);
plot(t,x(:,4),'linewidth',1,'color','y');
title('velocity');
xlabel('time');
ylabel('velocity');
grid on;
hold on;


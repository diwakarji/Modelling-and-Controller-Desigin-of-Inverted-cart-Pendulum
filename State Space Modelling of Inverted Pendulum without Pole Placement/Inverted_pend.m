%STATE SPACE MODEL OF INVERTED PENDULUM


function xdot=inverted_pend(t,x)
M=2;
m=0.5;
L=1;
g=-9.81;
J=0.2;
u=1;
xdot=zeros(4,1);
xdot(1)=x(2);
xdot(2)=(((m+M)*(m*g*L)*x(1))/((J+m*L^2)*(M+m)-(m^2*L^2)))-((m*L*u)/((J+m*L^2)*(M+m)-(m^2*L^2)));
xdot(3)=x(4);
xdot(4)=(((J+m*L^2)*u)/((J+m*L^2)*(m+M)-(m^2)))-(((m^2*L^2*g)*x(1))/((J+m*L^2)*(M+m)-(m^2*L^2)));
end


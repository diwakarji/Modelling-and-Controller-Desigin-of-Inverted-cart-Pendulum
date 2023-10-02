%CALLING FUNCTION FOR POLE PLACEMNT

function xdot=inverted2_pend(t,x)
A=[0 1 0 0;8.175 0 0 0; 0 0 0 1; -3.27 0 0 0];
B= [0;-0.33; 0; 0.467];
k = acker(A,B,[-4+2i -4-2i -10 -10]);
e=eig(A)
a=eig(A-(B*k))
u =-k*x;

M=2;
m=0.5;
L=1;
g=9.81;
J=0.2;
xdot=zeros(4,1);
xdot(1)=x(2);
xdot(4)=(((J+m*L^2)*u)/((J+m*L^2)*(m+M)-(m^2)))-(((m^2*L^2*g)*x(1))/((J+m*L^2)*(M+m)-(m^2*L^2)));
xdot(3)=x(4);
xdot(2)=(((m+M)*(m*g*L)*x(1))/((J+m*L^2)*(M+m)-(m^2*L^2)))-((m*L*u)/((J+m*L^2)*(M+m)-(m^2*L^2)));
end

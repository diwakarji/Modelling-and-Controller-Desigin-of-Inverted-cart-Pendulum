% Initialising A,B,C,D matrices

A=[0       1    0    0;
   8.175   0    0    0;
    0      0    0    1;
   -3.27   0    0    0];
B= [  0;
    -0.33;
      0;
    0.467];
C1 = [1 0 0 0];             % for theta
C2=  [0 0 1 0];             % for x(displacement)
D =  0;

%Tranfer function with respect to Theta
[num1,den1]=ss2tf(A,B,C1,D);
sys1=tf(num1,den1)

% Transfer function with respect to x(Translational Displacement
[num2,den2]=ss2tf(A,B,C2,D);
sys2=tf(num2,den2)

% display the output


%here we are checking the controllability and observability
clc;
clear all;
close all;

A=[0       1    0    0;
   8.175   0    0    0;
    0      0    0    1;
   -3.27   0    0    0];

B= [  0; -0.33; 0; 0.467];

%checking controllabilty
S=ctrb(A,B);
rank(S)

%checking observability for angular displacement(theta) 
C1 = [1 0 0 0];            
P1= obsv(A,C1);
rank(P1)

%%checking observability for linear displacement(x) 
C2=  [0 0 1 0];
P2=obsv(A,C2);
rank(P2)

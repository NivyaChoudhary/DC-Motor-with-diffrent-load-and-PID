%calculation using parameter
J = 0.01 %kgm^2
R = 1    %ohm
L = 0.01 %H
b = 0.1  %Ns/rad
Ke = 0.05
Kt = 0.05
V = 100

K = 0.05

%K=0.05


%laplace transform
s = tf('s');
P_motor = K/((J*s+b)*(L*s+R)+K^2)  %Continuous-time transfer function.

%State Space we can get like this
%A = [-b/J   K/J
   % -K/L   -R/L];
%B = [0
   % 1/L];
%C = [1   0];
%D = 0;
%motor_ss = ss(A,B,C,D)

motor_ss = ss(P_motor);%ss directly using motor equation


linearSystemAnalyzer('step', P_motor, 0:0.1:5);%step response







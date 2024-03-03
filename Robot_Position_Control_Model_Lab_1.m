%% Vahit Berke Özener NO:79910 ELEC 304 Feedback Control System Lab
clc
clear all
close all
% Statement: Compute x[n]for n>=0, for n<=N
% Constants
% For stability Kp*Ts<2
% To observe the curve chose lambda value small
Kp = 25; % Proportionality constant
Ts = 0.1; % Sampling period (Time Step)
l = 1-(Kp*Ts);
a = Kp*Ts;
n = 0:Ts:10; % Time vector run for 10 sec
N = length(n); % Number of time instances
% Discrete Time Control Functions 
x = [0]; % Postion in the first time step (Control Position)
d = ones([1,N]); % Desired position


for i=1:N-1
    x(end+1) = l*x(i) + a*d(i);
end

% Plotting
stem(n,x);
xlabel('Time(s)');
ylabel('Position(m)');
title('Robot Positioning for Kp=25 Ts=0.1')


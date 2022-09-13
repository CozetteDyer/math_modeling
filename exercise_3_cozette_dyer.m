% Cozette Dyer 9/8/2022
% MATH-3583 -- Math modeling
%
% Assignment: Spread of a Contagious Disease
% Original problem in textbook (pg 13)
% ----------------------------------------------------------------
clear % clears ALL variables
clc % clears the command window
close all;

%% Variables
n = 400; % initial population of students in dorms
time = 20; % number of iterations (days in model)
i0 = 1; % initial population of infected students
s0 = (n-1); % susceptible population
k = 0.025; % interactions that would cause additional infections.
           % Disease is very infectious in this example

vec_i = zeros(time, 1);
vec_s = zeros(time, 1);
vec_i(1) = i0;
vec_s(1) = s0;

% -------------------------------------------------------------- Model 1
%% Calculations

for i=1:time
    vec_s(i+1) = (n-i);
    vec_i(i+1) = k*i*(n-1)+vec_i(i); % equation given in textbook
    disp(vec_i);
end

%% Plots

plot(vec_s, 'bo-','MarkerFaceColor','b')
hold on
    plot(vec_i, 'ro-','MarkerFaceColor','r')
hold off
xlabel('time (hours)')
ylabel('students')
set(gca, 'FontSize', 12)
legend('Susceptible Students', 'Infected Students', 'Location', 'best')
title('Spread of Infection in Dorm')
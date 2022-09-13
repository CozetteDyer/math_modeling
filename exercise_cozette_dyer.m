% Cozette Dyer 9/1/2022 
% MATH-3583 -- Math modeling
% 
% Assignment: 3 linear model comparison
%  a) subplot function to plot three graph for m vs e in a row. 
%  b) given m=1000, e=17.5, which model fits the new graph best? 
% ----------------------------------------------------------------

clear       % clears ALL variables
clc         % clears the command window
close all;

%%  Variables
mass = 50:50:550; % vector of mass values
elongation = [1.000 1.875 2.750 3.500 4.375 4.875 5.675 6.500 7.250 8.000 8.750];
% vector of elongation values

new_mass = mass;
new_elongation = elongation;

new_mass(end+1) = 1000;
new_elongation(end+1) = 17.5;

k1 = (elongation(2)-elongation(1))/(mass(2)-mass(1)); % model 1 k value
slope1 = k1*mass;

k2 = (elongation(6)-elongation(5))/(mass(6)-mass(5)); % model 2 k value
slope2 = k2*mass;

k3 = (elongation(10)-elongation(9))/(mass(10)-mass(9)); % model 3 k value
slope3 = k3*mass; % bad model

new_k = (elongation(2)-elongation(1))/(mass(2)-mass(1)); 
new_slope = new_k*new_mass; % model match for additional point

figure(1)
%% Subplot 1
subplot(3,1,1);
plot(mass, elongation,'o', 'MarkerSize',5, 'MarkerFaceColor','g');
hold on
    plot(mass, slope1,'r-o', 'MarkerSize',5, 'MarkerFaceColor','r');
hold off
xlabel('Mass', 'FontSize',12)
ylabel('Elongation', 'FontSize',12)
title("Model 1: Indices 1 & 2",'FontSize',12);

%% Subplot 2
subplot(3,1,2);
plot(mass, elongation,'o', 'MarkerSize',5, 'MarkerFaceColor','g');
hold on
    plot(mass, slope2,'b-o', 'MarkerSize',5, 'MarkerFaceColor','b');
hold off
xlabel('Mass', 'FontSize',12)
ylabel('Slope', 'FontSize',12)
title("Model 2: Indices 5 & 6", 'FontSize',12);

%% Subplot 3
subplot(3,1,3);
plot(mass, elongation,'o', 'MarkerSize',5, 'MarkerFaceColor','g');
hold on
    plot(mass, slope3,'m-o', 'MarkerSize',5, 'MarkerFaceColor','m');
hold off
xlabel('Mass', 'FontSize',12)
ylabel('Slope', 'FontSize',12)
title("Model 3: Indices 9 & 10 ", 'FontSize',12);


%% Best Model  
figure(2)
plot(new_mass, new_elongation,'o', 'MarkerSize',5, 'MarkerFaceColor','b');
hold on
    plot(new_mass, new_slope,'r-o', 'MarkerSize',5, 'MarkerFaceColor','r');
hold off
xlabel('Mass', 'FontSize',12)
ylabel('Elongation', 'FontSize',12)
title("Mass vs Elongation, given point (1000, 17.5)", 'FontSize',12);

%fprintf(); disp(error) % print error to screen 

% finish!!

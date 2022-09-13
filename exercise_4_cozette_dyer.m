% Cozette Dyer 9/8/2022
% MATH-3583 -- Math modeling
%
% Assignment: Decay of Digoxin in the Bloodstream
% Original problem in textbook (pg 14)
% ----------------------------------------------------------------
clear % clears ALL variables
clc % clears the command window
close all;

%% Variables


%% Plots
figure(1)
plot(vec, 'bo-','MarkerSize', 10, 'MarkerFaceColor', 'b' )
hold on
    plot(obs_vec,'go-','MarkerSize', 5, 'MarkerFaceColor', 'g')
hold off

xlabel('n days')
ylabel('digozin in bloodstream')
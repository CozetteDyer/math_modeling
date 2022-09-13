% Cozette Dyer 9/8/2022
% MATH-3583 -- Math modeling
%
% Assignment: yeast biomass approaches a limiting population level
% Example done in class and original problem in textbook
% ----------------------------------------------------------------
clear % clears ALL variables
clc % clears the command window
close all;

% -------------------------------------------------------------- Model 1
%% variables - model 1
alpha = 665*0.00082; % model parameter
p0 = 9.6; % initial population
n = 18; % number of iterations (numbers of hours in model)
obs_data = [9.6;18.3;29.0;47.2;71.1;119.1;174.6;257.3;350.7;441.0; ...
    513.3;559.7;594.8;629.4;640.8;651.1;655.9;659.6;661.7]; ... 
    % observational data from text book in column vector
vec_p1 = zeros(n,1); % preallocating vector size, filled with zeros
vec_p1(1) = p0; 

% for loop: start :)
for i=1:n
    %vec_p1(i+1) = (1+alpha)*vec_p1(i); % equation given in class example
    vec_p1(i+1) = vec_p1(i) + 0.00082*(665-vec_p1(i))*vec_p1(i); ...
        % equation given in textbook
    disp(vec_p1);
end

plot(vec_p1, 'mo-', 'MarkerFaceColor','m')
hold on 
    plot(obs_data,'bo', 'MarkerFaceColor','b' )
hold off
xlabel('time (hours)')
ylabel('population size')
set(gca, 'FontSize', 12)
legend('Model 1 Predictions', 'Observed Data', 'Location', 'best')
title('Yeast Population')
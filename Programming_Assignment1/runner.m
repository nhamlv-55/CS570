%% Initialization
clear ; close all; clc

%% ==================== Part 1: Basic Function ====================
% Complete warmUpExercise.m 
fprintf('Running warmUpExercise ... \n');
fprintf('5x5 Identity Matrix: \n');
%warmUpExercise()

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ======================= Part 2: Plotting =======================
fprintf('Plotting Data ...\n')
feature = load('spam_features.txt');
label = load('spam_labels.txt');
X = feature(:, :); y = label(:, :);
m = length(y); % number of training examples
fprintf('%d', m);
% Plot Data
% Note: You have to complete the code in plotData.m
plotData(X(: , 1), y);

fprintf('Program paused. Press enter to continue.\n');
pause;

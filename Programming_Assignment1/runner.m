%% Initialization
clear ; close all; clc

%% ======================= Part 2: Plotting =======================
feature = load('spam_features.txt');
label = load('spam_labels.txt');
X = feature(1:10, :); 
y = label(1:10, :);
m = length(y); % number of training examples
%fprintf('%d\n', m);

params = nbayes_learn(X, y)
params(1).classprobs(2)
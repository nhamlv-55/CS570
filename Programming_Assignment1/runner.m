%% Initialization
clear ; close all; clc

%% Loading
feature = load('spam_features.txt');
label = load('spam_labels.txt');

%% Choose the number of training example
nosample = 10;
total = size(label, 1);
X = feature(1:nosample, :); 
y = label(1:nosample, :);
%fprintf('%d\n', m);

TestData = feature(1501: total, :);
RefLabel = label(1501:total, :);


params = nbayes_learn(X, y);
PredictLabel = nbayes_predict(params, TestData);

compare = [PredictLabel-RefLabel];
size(compare)
result = size(find(compare ~= 0), 1);
ratio = (total-1500-result)/(total-1500);
fprintf('Total sample: %d. \n', total);
fprintf('Number of training data: %d. \n', nosample);
fprintf('NBC\n');
fprintf('Number of wrong detection: %d. \n', result);
fprintf('Accuracy: %f percent \n', ratio*100);

randomTestLabel = random(TestData);
randomCompare = [randomTestLabel - RefLabel];
randomResult = size(find(randomCompare ~= 0), 1);
randomRatio = (total-1500-randomResult)/(total-1500);
fprintf('Random\n');
fprintf('Number of wrong detection: %d. \n', randomResult);
fprintf('Accuracy: %f percent \n', randomRatio*100);

blindTestLabel = blind(label, nosample);
size(blindTestLabel);
blindCompare = [blindTestLabel - RefLabel];
blindResult = size(find(blindCompare ~=0), 1);
blindRatio = (total-1500-blindResult)/(total-1500);

fprintf('Blind\n');
fprintf('Number of wrong detection: %d. \n', blindResult);
fprintf('Accuracy: %f percent \n', blindRatio*100);

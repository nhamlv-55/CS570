function[predictions] = blind(testLabel, nosample)
predictions = zeros(size(testLabel, 1)-1500, 1);
Dataset = testLabel(1:nosample, :);
no1 = size(find(Dataset==1), 1);
no2 = size(find(Dataset==2), 1);
v=0;
if(no1>=no2)
    v=1
else
    v=2
end
for i = 1:size(predictions, 1)
    predictions(i) = v;
end
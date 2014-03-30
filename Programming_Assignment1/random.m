function[predictions] = random(testdata)
predictions = zeros(size(testdata,1), 1);
for i =1:size(testdata,1)
    predictions(i) =randi([1,2]);
end

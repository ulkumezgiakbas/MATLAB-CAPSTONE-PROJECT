
cancer = readtable('cancer.csv');

%plot(cancer(:,1), cancer(:,1))
whos cancer 
X = cancer(:,1:30);
X = table2array(X);
y = cancer(:,31);
y = table2array(y);

figure
scatter(X(:,4), X(:,5), [], y)
xlabel('Mean Radius')
ylabel('Mean Smoothness')
title('Mean Radius vs. Mean Smoothness')

net = patternnet([10, 8, 5]);
view(net)

[net,tr] = train(net, X', y');

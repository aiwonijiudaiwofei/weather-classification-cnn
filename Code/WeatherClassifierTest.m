%Adding path to the features
addpath('/Users/JoseCarlosVillarreal/Documents/DissertationDevelopment/weather-classification-cnn/features/');

%%IMPORTANT VARIABLES TO CHANGES ON EACH RUN
model = 'bvlc_googlenet';
category = [string('cloudy'), string('foggy'), string('rainy'), string('snowy'), string('sunny')];

%Loading data
%pos_train, neg_train, pos_test, neg_test

%Cloudy Category
pos_train_cloudy = load(['../features/' model '/' char(category(1)) '/_positive_train_features.mat']) ;
neg_train_cloudy = load(['../features/' model '/' char(category(1)) '/_negative_train_features.mat']) ;
pos_test_cloudy = load(['../features/' model '/' char(category(1)) '/_positive_test_features.mat']) ;
neg_test_cloudy = load(['../features/' model '/' char(category(1)) '/_negative_test_features.mat']) ;

pos_train_cloudy = pos_train_cloudy.code ;
neg_train_cloudy = neg_train_cloudy.code_neg ;
pos_test_cloudy = pos_test_cloudy.code_v ;
neg_test_cloudy = neg_test_cloudy.code_v_neg ;

%Foggy Category
pos_train_foggy = load(['../features/' model '/' char(category(2)) '/_positive_train_features.mat']) ;
neg_train_foggy = load(['../features/' model '/' char(category(2)) '/_negative_train_features.mat']) ;
pos_test_foggy = load(['../features/' model '/' char(category(2)) '/_positive_test_features.mat']) ;
neg_test_foggy = load(['../features/' model '/' char(category(2)) '/_negative_test_features.mat']) ;

pos_train_foggy = pos_train_foggy.code ;
neg_train_foggy = neg_train_foggy.code_neg ;
pos_test_foggy = pos_test_foggy.code_v ;
neg_test_foggy = neg_test_foggy.code_v_neg ;

%Rainy Category
pos_train_rainy = load(['../features/' model '/' char(category(3)) '/_positive_train_features.mat']) ;
neg_train_rainy = load(['../features/' model '/' char(category(3)) '/_negative_train_features.mat']) ;
pos_test_rainy = load(['../features/' model '/' char(category(3)) '/_positive_test_features.mat']) ;
neg_test_rainy = load(['../features/' model '/' char(category(3)) '/_negative_test_features.mat']) ;

pos_train_rainy = pos_train_rainy.code ;
neg_train_rainy = neg_train_rainy.code_neg ;
pos_test_rainy = pos_test_rainy.code_v ;
neg_test_rainy = neg_test_rainy.code_v_neg ;

%Snowy Category
pos_train_snowy = load(['../features/' model '/' char(category(4)) '/_positive_train_features.mat']) ;
neg_train_snowy = load(['../features/' model '/' char(category(4)) '/_negative_train_features.mat']) ;
pos_test_snowy = load(['../features/' model '/' char(category(4)) '/_positive_test_features.mat']) ;
neg_test_snowy = load(['../features/' model '/' char(category(4)) '/_negative_test_features.mat']) ;

pos_train_snowy = pos_train_snowy.code ;
neg_train_snowy = neg_train_snowy.code_neg ;
pos_test_snowy = pos_test_snowy.code_v ;
neg_test_snowy = neg_test_snowy.code_v_neg ;

%Sunny Category
pos_train_sunny = load(['../features/' model '/' char(category(5)) '/_positive_train_features.mat']) ;
neg_train_sunny = load(['../features/' model '/' char(category(5)) '/_negative_train_features.mat']) ;
pos_test_sunny = load(['../features/' model '/' char(category(5)) '/_positive_test_features.mat']) ;
neg_test_sunny = load(['../features/' model '/' char(category(5)) '/_negative_test_features.mat']) ;

pos_train_sunny = pos_train_sunny.code ;
neg_train_sunny = neg_train_sunny.code_neg ;
pos_test_sunny = pos_test_sunny.code_v ;
neg_test_sunny = neg_test_sunny.code_v_neg ;

% Labels for each category
%   1 - Cloudy
%   2 - Foggy
%   3 - Rainy
%   4 - Snowy
%   5 - Sunny
%   -1 - Cloudy (Negative)
%   -2 - Foggy (Negative)
%   -3 - Rainy (Negative)
%   -4 - Snowy (Negative)
%   -5 - Sunny (Negative)

% Cloudy
labels_train_1 = ones(size(pos_train_cloudy,2),1)';
labels_train_1_neg = -1 * ones(size(neg_train_cloudy,2),1)';

labels_test_1 = ones(size(pos_test_cloudy,2),1)';
labels_test_1_neg = -1 * ones(size(neg_test_cloudy,2),1)';

% Foggy
labels_train_2 = 2 * ones(size(pos_train_foggy,2),1)';
labels_train_2_neg = -2 * ones(size(neg_train_foggy,2),1)';

labels_test_2 = 2 * ones(size(pos_test_foggy,2),1)';
labels_test_2_neg = -2 * ones(size(neg_test_foggy,2),1)';

% Rainy
labels_train_3 = 3 * ones(size(pos_train_rainy,2),1)';
labels_train_3_neg = -3 * ones(size(neg_train_rainy,2),1)';

labels_test_3 = 3 * ones(size(pos_test_rainy,2),1)';
labels_test_3_neg = -3 * ones(size(neg_test_rainy,2),1)';

% Snowy
labels_train_4 = 4 * ones(size(pos_train_snowy,2),1)';
labels_train_4_neg = -4 * ones(size(neg_train_snowy,2),1)';

labels_test_4 = 4 * ones(size(pos_test_snowy,2),1)';
labels_test_4_neg = -4 * ones(size(neg_test_snowy,2),1)';

% Sunny
labels_train_5 = 5 * ones(size(pos_train_sunny,2),1)';
labels_train_5_neg = -5 * ones(size(neg_train_sunny,2),1)';

labels_test_5 = 5 * ones(size(pos_test_sunny,2),1)';
labels_test_5_neg = -5 * ones(size(neg_test_sunny,2),1)';

% Adding the labels to the feature vectors
pos_train_cloudy = vertcat(pos_train_cloudy, labels_train_1);
neg_train_cloudy = vertcat(neg_train_cloudy, labels_train_1_neg);
pos_test_cloudy = vertcat(pos_test_cloudy, labels_test_1);
neg_test_cloudy = vertcat(neg_test_cloudy, labels_test_1_neg);

pos_train_foggy = vertcat(pos_train_foggy, labels_train_1);
neg_train_foggy = vertcat(neg_train_foggy, labels_train_1_neg);
pos_test_foggy = vertcat(pos_test_foggy, labels_test_1);
neg_test_foggy = vertcat(neg_test_foggy, labels_test_1_neg);

pos_train_rainy = vertcat(pos_train_rainy, labels_train_1);
neg_train_rainy = vertcat(neg_train_rainy, labels_train_1_neg);
pos_test_rainy = vertcat(pos_test_rainy, labels_test_1);
neg_test_rainy = vertcat(neg_test_rainy, labels_test_1_neg);

pos_train_snowy = vertcat(pos_train_snowy, labels_train_1);
neg_train_snowy = vertcat(neg_train_snowy, labels_train_1_neg);
pos_test_snowy = vertcat(pos_test_snowy, labels_test_1);
neg_test_snowy = vertcat(neg_test_snowy, labels_test_1_neg);

pos_train_sunny = vertcat(pos_train_sunny, labels_train_1);
neg_train_sunny = vertcat(neg_train_sunny, labels_train_1_neg);
pos_test_sunny = vertcat(pos_test_sunny, labels_test_1);
neg_test_sunny = vertcat(neg_test_sunny, labels_test_1_neg);

% Create a big matrix by concatenating the matrices side to side
pos_train = [pos_train_cloudy pos_train_foggy pos_train_rainy pos_train_snowy pos_train_sunny];
neg_train = [neg_train_cloudy neg_train_foggy neg_train_rainy neg_train_snowy neg_train_sunny];
pos_test = [pos_test_cloudy pos_test_foggy pos_test_rainy pos_test_snowy pos_test_sunny];
neg_test = [neg_test_cloudy neg_test_foggy neg_test_rainy neg_test_snowy neg_test_sunny];

disp(size(pos_train))
disp(size(neg_train))
disp(size(pos_test))
disp(size(neg_test))
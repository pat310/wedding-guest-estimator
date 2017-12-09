clear;
close all;
clc;

data = csvread('guestList.csv');
X = data(:, 3);

hist(X, 20);
xlabel('Probability');
ylabel('Group size');
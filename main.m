clear;
close all;
clc;

% number of simulations
n = 10000;

% load guest list with associated probabilities of attendance
data = csvread('guestList.csv');
X = data(:, 3);

% Plot the probability distribution of the guests
figure(1);
hist(X, 20);
xlabel('Probability');
ylabel('Number of guests');

% number of guests
num_guests = length(X);

% determine the number of times each guest will attend using random binomial distribution
guest_attending = zeros(n, num_guests);

for i = 1:num_guests
  guest_attending(:, i) = binornd(1, X(i), n, 1);
end

% sum the number of guests attending in each simulation
summed_simulations = sum(guest_attending, 2);

% group simulation counts into bins (i.e. how many times each count happens)
[nn, xx] = hist(summed_simulations, 20);

figure(2);
bar(xx, nn ./ n);
xlabel('Attendees');
ylabel('Probability')
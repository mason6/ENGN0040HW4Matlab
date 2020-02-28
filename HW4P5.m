% Homework 4 Problem 5.1
format long
close all
clc

vals = csvread('runner_data.csv');

figure
t = vals(:, 1);
F = vals(:, 2);
plot(t, F)

impulse = trapz(t, F) %#ok<NOPTS>

m = 70;
Joverm = impulse / m %#ok<NOPTS>

t_onground = vals(end, 1) - vals(1, 1) %#ok<NOPTS>
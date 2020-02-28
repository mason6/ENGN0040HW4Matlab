close all

syms theta

d_over_h = 2;
E_over_mgh = ( d_over_h ^ 2) / (4 * cos(theta) * (d_over_h * sin(theta) - cos(theta)));

figure
fplot(theta, E_over_mgh, [0.7, 1.2])


clear theta d_over_h

syms d_over_h

theta =  (atan(-d_over_h) + pi) / 2;

E_over_mgh = ( d_over_h ^ 2) / (4 * cos(theta) * (d_over_h * sin(theta) - cos(theta)));

figure
fplot(d_over_h, E_over_mgh, [0.7, 2])
%HW4 Problem 1
clc
close all

syms r
E0 = 398.7; a = 0.675; alpha = 4.39; beta = 0.1829; b = 0.3616; c = 1.6459;



U = E0 * (exp((- alpha * r) - (beta * r) ^ 6) - (b ^ 6 / (r ^ 2 + a ^ 2) ^ 3) * (1 + (c ^ 2 + 3 * a ^ 2) / (r ^ 2 + a ^ 2)));

U = U * 1602.17662;

F = - diff(U, r);

figure
fplot(r, U, [2.6, 5])
figure
fplot(r, F, [2.9, 5])



dFdr = diff(F, r);
%figure
%fplot(r, dFdr, [2.9,5])

rFmax = solve(dFdr == 0, r)
Fmax = subs(F, rFmax)

req = solve(F == 0, r)

val = subs(dFdr, req)

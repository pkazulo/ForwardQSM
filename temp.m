psi = [1, 3, 5];
M = length(psi);
t = linspace(0,1,M);
psi = psi(:);
t = t(:);
l2norm = sqrt(trapz(t, psi.^2));
function [sig,med] = dispersion(vector)
med = 0;
sig = 0;
for i=1:1:length(vector)
    med=med+vector(i);
end
med = med/length(vector);
for i=1:1:length(vector)
    sig = sig + (vector(i)-med).^2;   
end
sig = sig/(length(vector)-1);
sig = sqrt(sig);
end
clc
clear

v = 0:0.1:25;
[a b] = size(v);

f1 = zeros([1 b]);
f2 = zeros([1 b]);
f3 = zeros([1 b]);
f4 = zeros([1 b]);
f5 = zeros([1 b]);

f = [f1;f2;f3;f4;f5];

c = [5.38403,5.3413];
k = [1.41061,1.3788];

    for i = 1:2
         f(i,:) = (k(i)/c(i))*(v./c(i)).^(k(i)-1).*exp(-(v./c(i)).^k(i));
    end

plot(v,f(1,:),v,f(2,:))
legend('Matlab Function','PDE')
title('Weibull Distribution Comparison by Method')
xlabel('Wind Speed (m/s)')
ylabel('Probability of Occurance')
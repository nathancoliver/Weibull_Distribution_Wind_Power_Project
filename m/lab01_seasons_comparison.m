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

c = [5.20398,4.22723,6.12215,6.03177,5.38403];
k = [1.48222,1.53292,1.51612,1.31441,1.41061];

    for i = 1:5
         f(i,:) = (k(i)/c(i))*(v./c(i)).^(k(i)-1).*exp(-(v./c(i)).^k(i));
    end

plot(v,f(1,:),v,f(2,:),v,f(3,:),v,f(4,:),v,f(5,:),'--','Linewidth',2)
legend('Spring','Summer','Fall','Winter','Year')
title('Weibull Distribution Comparison by Season')
xlabel('Wind Speed (m/s)')
ylabel('Probability of Occurance')



clc
clear

A = xlsread('wind_speed.xlsx');
avg = mean(A(:,3));
size_A = size(A(:,3));


standard = std(A(:,3));

k = (standard/avg)^-1.086;

c = avg/gamma(1+k^-1);

% https://www.mathworks.com/help/stats/histfit.html#bthlw3u
% https://www.mathworks.com/help/stats/histfit.html

pd = fitdist(A(:,3),'Weibull');


histfit(A(:,3),100,'wbl')
title('Weibull Distribution of Year')
xlabel('Wind Speed (m/s)')
ylabel('Number of Occurances')




%histogram(A(:,3),100)
%probplot('normal',A(:,3))

% for i = 1:size_A(1)
%     x = (avg - A(i,3))^2;
%     sum = x + sum;
% end
% x = sum/(size_A(1)-1);

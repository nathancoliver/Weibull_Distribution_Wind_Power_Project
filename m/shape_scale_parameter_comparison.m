clear
clc

v = 0:0.1:25;
[a b] = size(v);

f1 = zeros([1 b]);
f2 = zeros([1 b]);
f3 = zeros([1 b]);
f4 = zeros([1 b]);
f5 = zeros([1 b]);


f = [f1;f2;f3;f4;f5];

    for i = 1:5
         k = 1 + (i * 0.25);
         c = 4.5;

         f(i,:) = (k/c)*(v./c).^(k-1).*exp(-(v./c).^k);
    end
    
g1 = zeros([1 b]);
g2 = zeros([1 b]);
g3 = zeros([1 b]);
g4 = zeros([1 b]);
g5 = zeros([1 b]);


g = [g1;g2;g3;g4;g5];

    for j = 1:5
         k = 1.5;
         c = 2 + j;

         g(j,:) = (k/c)*(v./c).^(k-1).*exp(-(v./c).^k);
    end

subplot(2,1,1)
plot(v,f(1,:),v,f(2,:),v,f(3,:),v,f(4,:),v,f(5,:),'Linewidth',2)
title('Constant Scale Parameter (c = 4.5)')
legend('k = 1','k = 1.25','k = 1.5','k = 1.75','k = 2')
xlabel('Wind Speed (m/s)')
ylabel('Probability of Occurance')

subplot(2,1,2)
plot(v,g(1,:),v,g(2,:),v,g(3,:),v,g(4,:),v,g(5,:),'Linewidth',2)
title('Constant Shape Parameter (k = 1.5)')
legend('c = 2','c = 3','c = 4','c = 5','c = 6')
xlabel('Wind Speed (m/s)')
ylabel('Probability of Occurance')
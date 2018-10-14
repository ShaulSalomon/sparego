N=10000;
B=10; C=0.45;
Y=linspace(0,1,N);

for i=1:N
 y=Y(i);

 A = 0;
 r1 = abs(y-C)/(floor(C-y)+C);
 r2 = (4*A+2)*pi*(0.5-0.5*r1);
 smulti1(i) = (1+cos(r2)+B*r1^2)/(B+2);
 
 A = 5;
 r1 = abs(y-C)/(floor(C-y)+C);
 r2 = (4*A+2)*pi*(0.5-0.5*r1);
 smulti2(i) = (1+cos(r2)+B*r1^2)/(B+2);
end

figure;
plot(Y,smulti1,'k--');
hold on;
plot(Y,smulti2,'k-');
legend('s\_multi: A=0','s\_multi: A=5');
xlabel('$y$','Interpreter','latex');
ylabel('Transformation function values');
set(gca,'FontSize', 17);
xticks([0 0.2 0.4 0.6 0.8 1]);
yticks([0 0.2 0.4 0.6 0.8 1]);
print('TestProblemsModality_a.eps','-deps');


N=10000;
A=5; B=10; C=0.45; E=1;
Y=linspace(0,1,N);

for i=1:N
 y=Y(i);

 D = 0;
 r1 = abs(y-C)/(floor(C-y)+C);
 r2 = (4*A+2)*pi*(0.5-0.5*r1);
 smulti1(i) = (1+cos(r2*(1-abs(r1))^(2*D))+B*abs(r1)^E)/(B+2);
 
 D = 3;
 r1 = abs(y-C)/(floor(C-y)+C);
 r2 = (4*A+2)*pi*(0.5-0.5*r1);
 smulti2(i) = (1+cos(r2*(1-abs(r1))^(2*D))+B*abs(r1)^E)/(B+2);
end

figure;
plot(Y,smulti1,'k--');
hold on;
plot(Y,smulti2,'k-');
legend('s\_multi*: D=0','s\_multi*: D=3');
xlabel('$y$','Interpreter','latex');
ylabel('Transformation function values');
set(gca,'FontSize', 17);
xticks([0 0.2 0.4 0.6 0.8 1]);
yticks([0 0.2 0.4 0.6 0.8 1]);
print('TestProblemsModality_b.eps','-deps');




N=10000;
A=5; B=10; C=0.45; D=3;
Y=linspace(0,1,N);

for i=1:N
 y=Y(i);

 E = 1;
 r1 = abs(y-C)/(floor(C-y)+C);
 r2 = (4*A+2)*pi*(0.5-0.5*r1);
 smulti1(i) = (1+cos(r2*(1-abs(r1))^(2*D))+B*abs(r1)^E)/(B+2);
 
 E = 2;
 r1 = abs(y-C)/(floor(C-y)+C);
 r2 = (4*A+2)*pi*(0.5-0.5*r1);
 smulti2(i) = (1+cos(r2*(1-abs(r1))^(2*D))+B*abs(r1)^E)/(B+2);
end

figure;
plot(Y,smulti1,'k--');
hold on;
plot(Y,smulti2,'k-');
legend('s\_multi*: E=1','s\_multi*: E=2');
xlabel('$y$','Interpreter','latex');
ylabel('Transformation function values');
set(gca,'FontSize', 17);
xticks([0 0.2 0.4 0.6 0.8 1]);
yticks([0 0.2 0.4 0.6 0.8 1]);
print('TestProblemsModality_c.eps','-deps');

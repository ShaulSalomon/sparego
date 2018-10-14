for i=1:10 dataP(:,i) = load(sprintf('IGD_P2_runs/run%d/IGD_ParEGO.txt',i)); end
for i=1:10 dataSP(:,i) = load(sprintf('IGD_P2_runs/run%d/IGD_sParEGO.txt',i)); end

mdataP = mean(dataP');
mdataSP = mean(dataSP');


budget = 1010;
x1 = floor(linspace(10,budget,100)); % ParEGO
x2 = floor(linspace(10,budget,50));  % sParEGO
plot(x1,mdataP,'ko-');
hold on;
plot(x2,mdataSP,'k*--');
xlabel('Function evaluations');
ylabel('IGD (Values averaged over 10 runs)');
legend('ParEGO','sParEGO');
set(gca,'FontSize', 14);
grid on;
print('P2_IGD.eps','-deps');

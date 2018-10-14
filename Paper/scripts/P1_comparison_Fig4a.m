%% solutions obtained after 1000 function evaluations

% ParEGO
fp = load('IGD_P1_runs/run1/ParEGO_Pop_99.out');


% sParEGO
fsp = load('IGD_P1_runs/run1/sParEGO_Pop_49.out');


% Robust PF
f = load('IGD_P1_runs/reference_population_performance_PF_P1.out');

plot(f(:,1),f(:,2),'k*');
hold on;
plot(fp(:,1),fp(:,2),'ko');
plot(fsp(:,1),fsp(:,2),'kv');
legend('performance PF','ParEGO','sParEGO');
grid on;
axis square;
xlabel('$f_1$','Interpreter','latex');
ylabel('$f_2$','Interpreter','latex');
set(gca,'FontSize', 14);
print('P1_PF_ParEGO_Vs_sParEGO.eps','-deps');


P1_PF_PS_sets;
P2_PF_PS_sets;

% Fig 3a

figure;
plot(f_P1(:,1),f_P1(:,2),'k.');
hold on;
fsub = f_P1(index_dir_P1,:);
plot(fsub(:,1),fsub(:,2),'ko','MarkerSize',9,'MarkerFaceColor','k');
axis square
grid on
xlabel('$f_1$','Interpreter','latex');
ylabel('$f_2$','Interpreter','latex');
set(gca,'FontSize', 14);
print('P1_PF.eps','-deps');

% Fig 3b

figure;
plot(f_P2_robust(:,1),f_P2_robust(:,2),'k.');
hold on;
plot(f_P2_performance(:,1),f_P2_performance(:,2),'k.');
fsub_robust = f_P2_robust(index_dir_P2_robust,:);
fsub_performance = f_P2_performance(index_dir_P2_performance,:);
plot(fsub_robust(:,1),fsub_robust(:,2),'ko','MarkerSize',9,'MarkerFaceColor','k');
plot(fsub_performance(:,1),fsub_performance(:,2),'ko','MarkerSize',9,'MarkerFaceColor','k');
text(0.5, 5.1, 'Robust PF','FontSize',14);
text(0.5, 4, 'Performance PF','FontSize',14);
axis square
grid on
xlabel('$f_1$','Interpreter','latex');
ylabel('$f_2$','Interpreter','latex');
set(gca,'FontSize', 14);
print('P2_PF.eps','-deps');


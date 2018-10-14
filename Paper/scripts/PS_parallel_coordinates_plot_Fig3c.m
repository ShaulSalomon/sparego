
P2_PF_PS_sets;

xsub_P2_robust = x_P2_robust(index_dir_P2_robust,:);
xsub_P2_performance = x_P2_performance(index_dir_P2_performance,:);

N = length(xsub_P2_robust);
a = ones(N,3).*[2.1 2.8 3.5]; % fixed decision variables for PF
xsub_P2_performance = [xsub_P2_performance a];

data=[xsub_P2_robust;xsub_P2_performance];
data=[data; [ 2 4 6 8 10 ]]; % maximum
data=[data; [ 0 0 0 0 0 ]]; % minimum
N = size(data,1);
D = size(data,2);

labels = {'x_1','x_2','x_3','x_4','x_5'};

% normalise the data
for i=1:D
 max_col = max(data(:,i));
 min_col = min(data(:,i));

 for j=1:N
  ndata(j,i) = (data(j,i) - min_col)/(max_col-min_col);
 end
end

c1 = plot([1:D],ndata(1:10,:),'v--','Color','k','MarkerSize',9);
hold on;
c2 = plot([1:D],ndata(11:20,:),'o-','Color',[0.5 0.5 0.5],'MarkerSize',9,'MarkerFaceColor',[0.5 0.5 0.5]);
axis([1 D 0 1]);
xticks([1:D]);
legend([c1(1) c2(1)],{'Robust Decision Vectors','Performance Decision Vectors',},'Location','northoutside');

ax = gca;
ax1p = ax.Position;
box off;

% set x-labels
xticklabels(ax,labels);
set(ax,'xaxisLocation','bottom'); % move them to the top

% determine unit length
right_x = ax1p(1)+ax1p(3);
len = (right_x - ax1p(1))/(D-1);

pticks = {linspace(0,1,3), linspace(0,1,3), linspace(0,1,3), linspace(0,1,3), linspace(0,1,3)};

% create axes
axn{1} = ax; % first axes was created by plot
ax.YTick = pticks{1};
ax.FontSize = 11;
ax.YColor = [0, 0, 0];
ax.FontWeight = 'bold';
for i=2:D
 pos_x(i) = ax1p(1) + (i-1)*len;
 axn{i} = axes('Position',[pos_x(i) ax1p(2) 0 ax1p(4)], 'YTick',pticks{i}, 'YColor', ax.YColor,'FontSize', ax.FontSize, 'FontWeight', ax.FontWeight);
end

format_dim = {'%d','%d','%d','%d','%d'};

% change y-ticks
for i=1:D
 
 n_ticks = length(pticks{i});

 min_col = min(data(:,i)); max_col1 = max(data(:,i));
 max_col = max(data(:,i));
 len_col = (max_col-min_col)/(n_ticks-1);

 ticks_num = [];
 for j=1:n_ticks
  ticks_num = [ticks_num; min_col + (j-1)*len_col];
 end
 
 ticks_cell = {};
 for j=1:n_ticks
  ticks_cell{j} = num2str(ticks_num, format_dim{i});
 end

 yticklabels(axn{i},ticks_cell);
end
print('P2_PS.eps','-depsc');


a=0.4;
lb = 2/3;
ub = 1;

%c = 0.1;
%S = @(r) r + c - c*r^a + c*r^(a+1) - c*r;
%Sd = @(r) 1 - c*a*r^(a-1) + (a+1)*c*r^a - c;
%x = fzero(Sd,[0.001 0.9]);
%ezplot(S,[0 1]);


N=11;
C = linspace(0,1,N);
for i=2:N
 c = C(i);
 Sd = @(r) 1 - c*a*r^(a-1) + (a+1)*c*r^a - c;
 x = fzero(Sd,[0.001 0.9]);
 Sn = @(r) lb + (r + c - c*r^a + c*r^(a+1) - c*r)*(ub - lb);
 S(i-1) = Sn(x);
end

%scalar = [2,4];
%F1 = @(t1) cos(t1)*scalar(1);
%F2 = @(t1) sin(t1)*scalar(2);
%fplot(F1,F2,[0 pi/2]);


Ndir = 10;
res = simplexLattice(Ndir-1,2);

scalar = [2,4];
for i=1:Ndir
 t1 = res(i,1)*pi/2;
 f1(i) = cos(t1)*scalar(1);
 f2(i) = sin(t1)*scalar(2);
end
%plot(f1,f2,'o');
%axis([0 scalar(1) 0 scalar(2)]);

% normalise to unit box
u = [3,6];
for d=1:Ndir
 v = [f1(d),f2(d)]; % objective vector

 for i=1:2
  nv(d,i) = v(i)/u(i);
 end
end

% to unit vector
for d=1:Ndir
 m=0;
 for i=1:2
  m = m + nv(d,i)^2;
 end
 m = sqrt(m);

 for i=1:2
  nnv(d,i) = nv(d,i)/m;
 end
end


myColor = gray(N);
FT(1) = plot(f1,f2,'ko','MarkerFaceColor',myColor(1,:)); hold on;

% scale
for k=1:N-1
for d=1:Ndir
 for i=1:2
  nnnv(d,i) = nnv(d,i)*S(k); % change 9
 end
end

% scale back to unit box
for d=1:Ndir
 for i=1:2
  sv(d,i) = nnnv(d,i)*u(i);
 end
end
FT(k+1) = plot(sv(:,1),sv(:,2),'ko','MarkerFaceColor',myColor(k+1,:)); hold on; 
end
legend(FT,{'c=0%','c=10%','c=20%','c=30%','c=40%','c=50%','c=60%','c=70%','c=80%','c=90%','c=100%'},'Location','eastoutside');

axis([0 3 0 6]);
axis square;
grid on;
xlabel('$f_1$','Interpreter','latex');
ylabel('$f_2$','Interpreter','latex');
set(gca,'FontSize', 16);
print('P2_confidence.eps','-depsc');

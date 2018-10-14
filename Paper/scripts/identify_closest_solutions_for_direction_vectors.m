%% f contains the objective vectors

% generate direction vectors

Ndir = 10;
res = simplexLattice(Ndir-1,2);

% normalise front

nadir = max(f);
ideal = min(f);

N = length(f);
M = 2;
for i = 1:N
 for j = 1:M
  nf(i,j) = (f(i,j) - ideal(j))/(nadir(j)-ideal(j));
 end
end

plot(nf(:,1),nf(:,2),'o');
hold on;

% plot direction vectors

for i = 1:Ndir

 x = res(i,1);
 y = res(i,2);
 m = y / x;
 ry = 1;
 rx = 1;
 nx = ry / m;
 ny = m * rx;

 if(y>x)
  line([0 nx],[0 ry]);
 else
  line([0 rx],[0 ny]);
 end 
end

% identify the solution closer along the direction of each direction vectors

for i = 1:Ndir % for each weight vector
 w = res(i,:); % direction vectors

 x = w(1); y = w(2); m = y/x; ry = 1; rx = 1; nx = ry / m; ny = m * rx;
 if(y>x)
  r(1) = nx; r(2) = ry; % reference
 else
  r(1) = rx; r(2) = ny; % reference
 end
  
 
 best_d = 10; % large number
 index = 1;
 for j = 1:N % for each normalised objective vector
    nobj = nf(j,:); % objective vector

    d1 = norm(nobj-r,2); 
    d2 = norm(nobj,2); % distance to the origin
    d = d1+d2;
    if(d<best_d)
     best_d = d;
     index = j;
    end
 end
 
 best_index(i) = index;

end

for i=1:Ndir; plot(nf(best_index(i),1),nf(best_index(i),2),'r*'); end

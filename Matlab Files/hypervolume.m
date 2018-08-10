function f=hypervolume(Pop,nadir)

m=sortrows(Pop);
d(size(Pop,1))=nadir(1,1)-m(end,1);
for i=size(Pop,1):-1:2
   d(i-1)=m(i,1)-m(i-1,1); 
end
for j=1:size(Pop,1)
   h(j)=nadir(1,2)-m(j,2);
   v(j)=d(j)*h(j);
end
   f=sum(v); 
end
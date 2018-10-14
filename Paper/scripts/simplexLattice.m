function res=simplexLattice(H,M)

a=zeros(1,H+1);
npoints=factorial(H+M-1)/(factorial(H)*factorial(M-1));
counter=zeros(1,M-1);
limit=ones(1,M-1);
res=zeros(npoints,M);

a(1)=0;
l=0;
for i=1:H
	l=l+1/H;
	a(i+1)=l;
end

for i=1:npoints

	position = H+1;
	
	for j=1:M-1
		res(i,j)=a(counter(j)+1);
		position = position - counter(j);

		sum=0;
		for k=1:j-1
			sum=sum+counter(k);
		end
		limit(j)=H-sum;
	end
	res(i,M)=a(position);

	for j=M-1:-1:1
		if(counter(j)<limit(j))
			counter(j) = counter(j)+1;
			break;
		else
			counter(j) = 0;
		end
	end	
end


end

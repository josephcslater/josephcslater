syms tf1 tf2 xi
tf1=(1-xi)^2
tf2=xi*(1-xi)^2
k(1,1)=int(tf1*diff(2/3*xi^3*diff(tf1,xi,2),xi,2),0,1);
k(1,2)=int(tf1*diff(2/3*xi^3*diff(tf2,xi,2),xi,2),0,1);
k(2,1)=int(tf2*diff(2/3*xi^3*diff(tf1,xi,2),xi,2),0,1);
k(2,2)=int(tf2*diff(2/3*xi^3*diff(tf2,xi,2),xi,2),0,1);
k=double(k)
m(1,1)=int(tf1*tf1*2*xi,0,1);
m(1,2)=int(tf1*tf2*2*xi,0,1);
m(2,1)=int(tf2*tf1*2*xi,0,1);
m(2,2)=int(tf2*tf2*2*xi,0,1);
m=double(m)
[v,d]=eig(m\k)
sqrt(diag(d))
sqrt(k(1,1)/m(1,1))


%More compactly would have been:
syms tf1 tf2 xi
tf=[(1-xi)^2,xi*(1-xi)^2]
for i=1:2
	for j=1:2
		k(i,j)=int(tf(i)*diff(2/3*xi^3*diff(tf(j),xi,2),xi,2),0,1);
		m(i,j)=int(tf(i)*tf(j)*2*xi,0,1);
	end
end
k
m
%k=double(k)
%m=double(m)
[v,d]=eig(m\k)
sqrt(diag(d))
sqrt(k(1,1)/m(1,1))

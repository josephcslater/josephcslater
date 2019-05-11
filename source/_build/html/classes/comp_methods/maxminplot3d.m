function maxminplot3d(varargin)
%maxminplot3d(A)
%maxminplot3d(A,n)
%maxminplot3d(A,cv)
%maxminplot3d(A,n,cv)
%maxminplot3d(A,cv,n)
% 
%  Plots the function x'*A*x as a radius with respect 
%to the coordinates of x in a unit sphere. Additionally,
%the eigenvectors are displayed as a black triad.
%The optional variable n controls the number of
%sample points in both the radial azimuth and elevation
%directions.  The default is n = 50, the minimum value for n is 20.
%
%  The option cv can be either the integers 1, 2, or 3 indicating
%an eigenvector of A, or cv can be an arbitrary vector [x;y;z].
%This option creates a cutting plane constraint normal to the
%vector cv.
%
% Example:
% A=[3 2 0;2 3 2;0 2 3],maxminplot3D(A,[1;0;0])

% Copyright Sean Mortara, 5/2000

A = varargin{1};
n = 50;
addnplane=1;
if nargin > 2,
   if max(size(varargin{2}))<max(size(varargin{3})) | varargin{2}>varargin{3},
      n = varargin{2};
      if max(size(varargin{3}))==1,
         ev=varargin{3};
      else, ev=[];nv=3;
      end
   else
      n = varargin{3};
      if max(size(varargin{2}))==1,
         ev=varargin{2};
      else, ev=[];nv=2;
      end
   end
elseif nargin == 2,
   if max(size(varargin{2}))==1 & varargin{2} >= 20,
      n = varargin{2};
      addnplane = 0;
   elseif max(size(varargin{2}))==1,
      ev=varargin{2};
   else
      ev=[];nv=2;
   end
else
   addnplane=0;
end

R = (0:1/(n-1):1)';
t = 0:2*pi/(n-1):2*pi;

y = R*cos(t);
z = R*sin(t);

xt = sqrt(abs(1-y.^2-z.^2));
xb = -xt;

Y = [y;flipud(y)];
Z = [z;flipud(z)];
X = [xt;flipud(xb)];

for i = 1:2*n,for j = 1:n,
       v = [X(i,j);Y(i,j);Z(i,j)];
       m(i,j) = v'*A*v;
end,end

cmag=sqrt((m.*X).^2+(m.*Y).^2+(m.*Z).^2);
surf(m.*X,m.*Y,m.*Z,cmag);

shading interp
lighting phong
xlabel('X'),ylabel('Y'),zlabel('Z')


[V,D]=eig(A);
[D,index]=sort(diag(D));
radius = max(max(m));
V=V(:,index);V=1.2*radius*real(V/sqrt(V'*V));
hold on
plot3([0;V(1,1)],[0;V(2,1)],[0;V(3,1)],'k')
text(1.1*V(1,1),1.1*V(2,1),1.1*V(3,1),'V_1','Fontsize',12)
plot3([0;V(1,2)],[0;V(2,2)],[0;V(3,2)],'k')
text(1.1*V(1,2),1.1*V(2,2),1.1*V(3,2),'V_2','Fontsize',12)
plot3([0;V(1,3)],[0;V(2,3)],[0;V(3,3)],'k')
text(1.1*V(1,3),1.1*V(2,3),1.1*V(3,3),'V_3','Fontsize',12)
hold off

rotate3d on
if addnplane==1,
   if isempty(ev),
      U=varargin{nv};
      U=U/sqrt(U'*U);
      Um=1.3*radius*U;
      text(Um(1),Um(2),Um(3),'U','Fontsize',12,'Color','m')
   else
      U=V(:,ev);
      U=U/sqrt(U'*U);
   end
   lambda = ctrans(U);
   
     for j = 1:n,
        npv = lambda'*[0;Y(n,j);Z(n,j)];
        NPX(j)=radius*npv(1);
        NPY(j)=radius*npv(2);
        NPZ(j)=radius*npv(3);
     end   
        hold on
        fill3(NPX,NPY,NPZ,'m')
        U=1.2*radius*U;
        plot3([0;U(1)],[0;U(2)],[0;U(3)],'m')
        hold off
end
axis equal
%axis off
h=colorbar('horiz');
%get(h)
%set(h,'hittest','off')

%rotate3d off
if exist('cameramenu')==2
   cameramenu  
end
%------------------------------------------------------------- 
function lambda = ctrans(uv)
lox=uv(1);
mox=uv(2);
nox=uv(3);
d=sqrt(lox^2+nox^2);

if d==0
   lambda=[   0     mox     0
            -mox     0      0
              0      0      1   ];
             
else
loz=-nox/d;
moz=0;
noz=lox/d;
loy=-lox*mox/d;
moy=(nox^2+lox^2)/d;
noy=-mox*nox/d;
lambda =[ lox  mox  nox
          loy  moy  noy
          loz  moz  noz ];
end     
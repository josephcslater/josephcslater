%107
r0=[960 240 0];%[x0 y0 z0]
r1=[0 0 380];%B   [x1 y1 z1]
r2=[0 0 -320];% C  [x2 y2 z2]
r3=[ 961 240 0];%To get direction of P  [x3 y3 z3]
r4=[0 960 -220];%D   [x4 y4 z4]

F=305

lam1=[r1-r0]/norm(r1-r0)
lam2=[r2-r0]/norm(r2-r0)
lam3=[r3-r0]/norm(r3-r0)
lam4=[r4-r0]/norm(r4-r0)

Fv=F*lam4

A=[lam1' lam2' lam3']

Fv=Fv'

Forces=-A\Fv

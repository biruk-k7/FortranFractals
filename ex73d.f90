
integer, parameter:: n = 50000
integer:: i,j,seed,xt,yt,t
real, dimension(0:n)::x,y,z
double precision::r
real:: xa,xb,xc,xd,xe,xf,xg,ya,yb,yc,yd,ye,yf,yg,za,zb,zc,zd,ze,zf,zg, pi, m

pi = acos(-1.d0)

xa =20.d0 ; ya = 0 ; za = 0
xb = 20.d0*cos(pi/3.d0) ; yb = 20.d0*sin(pi/3.d0); zb = 0
xc = 20.d0*cos(2.d0*pi/3.d0) ; yc = 20.d0*sin(2.d0*pi/3.d0); zc = 0
xd = 20.d0*cos(pi) ; yd = 20.d0*sin(pi)		; zd = 0
xe = 20.d0*cos(4*pi/3) ; ye = 20.d0*sin(4*pi/3); ze = 0
xf = 20.d0*cos(5*pi/3) ; yf=20.d0*sin(5*pi/3); zf = 0
xg = 0; yg = 0; zg =40

x(0) =0
y(0) =0
z(0) =0
open(11, file='cluster.dat', status='unknown')


write(11,*) n
write(11,*) 'fractal'

m =3
do t = 1, n



j=ran()*7


if(j.eq.0)then
 x(t) = (x(t-1) + xa)/m
 y(t) = (y(t-1) + ya)/m
 z(t) = (z(t-1) + za)/m
	elseif(j.eq.1)then
	 x(t) = (x(t-1) + xb)/m
	 y(t) = (y(t-1) + yb)/m
	 z(t) = (z(t-1) + zb)/m
 		elseif(j.eq.2)then
		 x(t) = (x(t-1) + xc)/m
		 y(t) = (y(t-1) + yc)/m
		 z(t) = (z(t-1) + zc)/m
		 elseif(j.eq.3)then
		 x(t) = (x(t-1) + xd)/m
		 y(t) = (y(t-1) + yd)/m
		 z(t) = (z(t-1) + zd)/m
		 elseif(j.eq.4)then
		 x(t) = (x(t-1) + xe)/m
		 y(t) = (y(t-1) + ye)/m
		 z(t) = (z(t-1) + ze)/m
		 elseif(j.eq.5)then
		 x(t) = (x(t-1) + xf)/m
		 y(t) = (y(t-1) + yf)/m
		 z(t) = (z(t-1) + zf)/m
		 else
		 x(t) = (x(t-1) + xg)/m
		 y(t) = (y(t-1) + yg)/m
		 z(t) = (z(t-1) + zg)/m
		 		 
endif


write(11,*) 'A', x(t),y(t), z(t)




enddo


end 

subroutine generate_seed(seed)
integer :: seed
integer, dimension(3) :: t
call itime(t)
seed = 487*t(1) + 5645*t(2) + 776896*t(3)
end


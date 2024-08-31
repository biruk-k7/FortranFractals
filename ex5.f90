
integer, parameter:: n = 10000
integer:: i,j,seed,xt,yt,t
real, dimension(0:n)::x,y,z
double precision::r
real:: xa,xb,xc,xd,ya,yb,yc,yd,za,zb,zc,zd

xa =0 ; ya= 0!; za = 0
xb =0 ; yb = 60!; zb = 0
xc = 60 ; yc =0 !sqrt(60.0**2-30.0**2); zc = 0
xd =60 ; yd =60 !sqrt(60.0**2-30.0**2)/2; zd =sqrt(60.0**2-(30.0/cos(acos(-1.0)/6))**2)


x(0) =0
y(0) =0
z(0) =0
open(11, file='cluster.dat', status='unknown')

do t = 1, n



j=ran()*4

if(j.eq.0)then
 x(t) = (x(t-1) + xa)/3
 y(t) = (y(t-1) + ya)/3
 z(t) = (z(t-1) + za)/3
	elseif(j.eq.1)then
	 x(t) = (x(t-1) + xb)/3
	 y(t) = (y(t-1) + yb)/3
	 z(t) = (z(t-1) + zb)/2
 		elseif(j.eq.2)then
		 x(t) = (x(t-1) + xc)/3
		 y(t) = (y(t-1) + yc)/3
		 z(t) = (z(t-1) + zc)/2
		 else
		 x(t) = (x(t-1) + xd)/3
		 y(t) = (y(t-1) + yd)/3
		 z(t) = (z(t-1) + zd)/2
		 
endif


write(11,*) x(t),y(t)




enddo


end 

subroutine generate_seed(seed)
integer :: seed
integer, dimension(3) :: t
call itime(t)
seed = 487*t(1) + 5645*t(2) + 776896*t(3)
end


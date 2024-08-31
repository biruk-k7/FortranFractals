
integer, parameter:: n = 10000
integer:: i,j,seed,xt,yt,t
real, dimension(0:n)::x,y
double precision::r
real:: xa,xb,xc,ya,yb,yc

xa =0 ; ya= 0
xb =60 ; yb = 0
xc = 30 ; yc = sqrt(60.0**2-30.0**2)

x(0) = xc
y(0) = yc/2
 
open(11, file='cluster.dat', status='unknown')
do t = 1, n

j=ran()*3

if(j.eq.0)then
 x(t) = (x(t-1) + xa)/2
 y(t) = (y(t-1) + ya)/2
	elseif(j.eq.1)then
	 x(t) = (x(t-1) + xb)/2
	 y(t) = (y(t-1) + yb)/2
 		else
		 x(t) = (x(t-1) + xc)/2
		 y(t) = (y(t-1) + yc)/2
			
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


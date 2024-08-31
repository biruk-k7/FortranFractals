

integer, parameter:: n = 100000
integer:: i,j,seed,xt,yt,t
real, dimension(0:n)::x,y
double precision::r


x(0) =0
y(0) =0

open(11, file='fern.dat', status='unknown')
do t = 1, n

r=ran()

if(r.lt.0.01d0)then
 x(t) = 0
 y(t) = 0.16*y(t-1)
	elseif(r.ge.0.01d0.and.r.lt.0.86d0)then
	 x(t) = 0.85*x(t-1) + 0.04*y(t-1)
	 y(t) = -0.04*x(t-1)+0.85*y(t-1) + 1.6
 		elseif(r.ge.0.86d0.and.r.lt.0.93d0)then
 		x(t) = 0.2*x(t-1)-0.26*y(t-1)
 		y(t) = 0.23*x(t-1)+0.22*y(t-1) + 1.6
			else
			x(t) = -0.15*x(t-1) + 0.28*y(t-1)
			y(t) = 0.26*x(t-1) + 0.24*y(t-1) + 0.44
			

endif


write(11,*) x(t),y(t)




enddo


end 



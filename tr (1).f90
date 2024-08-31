
integer, parameter:: n = 100
integer:: i,j,seed,xt,yt,t
real, dimension(n)::x,y
double precision::r
real :: theta, pi, w,xc,yc


pi = acos(-1.d0)

do i =1, n

w =ran()

x(i) = 20.d0*cos(2*pi*ran())
if(w.lt.0.5d0)then
y(i) =sqrt(20.d0**2-x(i)**2)
else
y(i) =-sqrt(20.d0**2-x(i)**2)

endif


enddo

open(11, file='circle.dat', status='unknown')

do j=1, 500

write(11,*) n
write(11,*) 'circle'
do i =1, n

x(i) = x(i) + 20.d0*cos(2*pi/(501-j))
y(i) = y(i)+ 20.d0*sin(2*pi/(501-j))
write(11,*) 'A',x(i), y(i),0.d0

enddo

enddo


end



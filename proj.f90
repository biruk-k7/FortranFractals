
integer :: i,j,k,l,n,m

real:: theta, pi, t ,dt,x,y,v0, g

dt = 0.1
pi =acos(-1.0)

theta = pi/3
v0 = 20.0
t = 0
g = 9.8

open(12,file='trj.xyz',status ='unknown')

open(13,file='grd.xyz',status ='unknown')

	



do i =1, 500
	
	
	t = t +dt
	y = v0*sin(theta)*t -0.5*(g*t**2)
	x =v0*cos(theta)*t
	
	if(y.gt.0)then	
	write(12,*) 1
	write(12,*) 'tajectory'
	write(12,*) 'B',x,y, 0.0

	endif

enddo



n = int(x) + 50

write(13,*) n*401
	write(13,*) 'points'
do i = -200, 200

	do j = 1,n 

	
	write(13,*) 'A',j,0, i
	
	
	enddo

enddo






end


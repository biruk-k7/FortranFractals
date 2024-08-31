

integer, parameter:: n = 1000
integer:: i, j,t, x,y
real::z1,z2, pi,r1,r2

pi = acos(-1.d0)

open(12, file='cordinate.xyz',status='unknown')

do t =1, 500

write(12,*) (2*n+1)**2
write(12,*) 'corddd'
	do x = -n,n

		do y =-n,n
	
		r1 = sqrt(0.05d0*real(x)**2+0.05d0*real(y)**2)
		r2 = sqrt(0.05d0*real(x-500)**2+0.05d0*real(y)**2)
		z1 = 20.d0*sin(r1-pi*real(t)/50)
		z2 = 20.d0*sin(r2-pi*real(t)/50)
	write(12,*) 'A', x,y,z1+z2 				
	
		enddo
	enddo

enddo



end



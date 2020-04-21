!--------------------------------------!
!                                      !
! update-err.f90                       !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! Use of update directive to transfert !
! data. It is impossible to use update !
! inside a parallel region.            !
!                                      !
! The a array is not initialized on    !
! the host before the end of the       !
! data region.                         !
!                                      !
!--------------------------------------

program para
 integer :: i,j,k
 integer :: rng
 integer :: s = 10000
 integer :: p = 42
 real    :: test
 integer, dimension (:), allocatable :: a

 allocate( a(1:s) )
 
 !$ACC data copyout( a(:s) )
 !$ACC parallel loop
 do i=1,s
   a(i) = 0
 enddo
 do j=1,p
   call random_number(test)
   rng = floor(test*100)
   !$ACC parallel loop copyin(rng) &
   !$ACC& copyout(a)
   do i=1,s
     a(i) = a(i) + rng
   enddo
 enddo
 ! write(*,*) "before update self", a(p)
 !!$ACC update self(a(p:p)) 
 ! write(*,*) "after update self", a(p)
 !$ACC serial 
 a(p) = p
 !$ACC end serial
 write(*,*) "before end data", a(p)
 !$ACC end data 
 write(*,*) "after end data", a(p)

end program para

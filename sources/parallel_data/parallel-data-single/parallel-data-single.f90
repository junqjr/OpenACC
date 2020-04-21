!--------------------------------------!
!                                      !
! parallel-data-single.f90             !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! It opens data region inside a        !
! procedure. Then, variables inside    !
! the clauses visible on the device.   !
!                                      !
! Compute region reached 1000 times    !
! Data region reached 1 time           !
! (Enter and exit - potentially 2      !
! data transfers)                      !
!                                      !
!--------------------------------------

program para
  integer :: i,j
  integer :: s = 10000
  integer :: p = 1000
  integer, dimension (:), allocatable :: a

  allocate( a(1:s) )
  
  !$ACC parallel copyout( a(:s) )
  !$ACC loop
  do i=1,s
    a(i) = i
  enddo
  !$ACC end parallel

  !$ACC data copy( a(:s) )
  do j=1,p
    !$ACC parallel 
    !$ACC loop
    do i=1,s
      a(i) = a(i) + 1
    enddo
    !$ACC end parallel
  enddo
  !$ACC end data 
  
  write(*,*) a(s)

end program para
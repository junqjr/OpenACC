!--------------------------------------!
!                                      !
! loop_coalescing-vec.f90              !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! Calescing memory access              !
! of nested loops in GPU               !
! (j,i) loop                           !
!                                      !
!--------------------------------------

program loop
  integer :: i,j
  integer :: nx=10000
  real , dimension(:,:), allocatable :: a
  
  allocate( a(nx,nx) )

  !$ACC parallel
  !$ACC loop gang
  do j=1,nx
    !$ACC loop vector
    do i=1,nx
      a(i,j) = 1.14d-8
    enddo 
  enddo
  !$ACC end parallel

end program loop

!--------------------------------------!
!                                      !
! parallel-data-multi.f90              !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! Compute contructs serial, parallel   !
! kernels have a data region           !
! associated with variables necessary  !
! to execution.                        !
!                                      !
! Compute region reached 1000 times    !
! Data region reached 1000 times       !
! (Enter and exit - potentially 2000   !
! times)                               !
!                                      !
!--------------------------------------

program parallel_data
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
  do j=1,p
    !$ACC parallel copy( a(:s) )
    !$ACC loop
    do i=1,s
      a(i) = a(i) + 1
    enddo
    !$ACC end parallel
  enddo
  write(*,*) a(s)

end program parallel_data

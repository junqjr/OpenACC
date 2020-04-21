!--------------------------------------!
!                                      !
! parallel-data.f90                    !
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
!--------------------------------------

program parallel_data
  integer :: a(10000)
  integer :: i
  
  !$ACC parallel copyout( a(:10000) )
  !$ACC loop
  do i=1,10000
    a(i) = i
  enddo
  !$ACC end parallel
  write(*,*) a(10000)

end program parallel_data

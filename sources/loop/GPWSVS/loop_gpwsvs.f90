!--------------------------------------!
!                                      !
! loop_gpwsvs.f90                      !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! serial GPU execution                 !
!                                      !
! Each gang executes a diff.           !
! block of iterations                  !
! Active Threads : 10                  !
! Nb. of Operations : nx               !
!                                      !
!  ____________________________        !
! |x|                          |       !
! |                            |       !
! |                            |       !
! |___________________________ |       !
!                                      !
!  ____________________________        !
! |x|                          |       !
! |                            |       !
! |                            |       !
! |___________________________ |       !
!                                      !
!  ____________________________        !
! |x|                          |       !
! |                            |       !
! |                            |       !
! |___________________________ |       !
!                                      !
!--------------------------------------

program loop
  integer :: a(10000)
  integer :: i
  
  !$ACC parallel num_gangs(10)
  !$ACC loop gang
  do i=1,10000
    a(i) = i
  enddo
  !$ACC end parallel

end program loop

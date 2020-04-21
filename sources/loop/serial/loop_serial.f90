!--------------------------------------!
!                                      !
! loop_serial.f90                      !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! serial GPU execution                 !
!                                      !
! Active Threads : 1                   !
! Nb. of Operations : nx               !
!                                      !
!  ____________________________        !
! |x|                          |       !
! |                            |       !
! |                            |       !
! |___________________________ |       !
!                                      !
!  ____________________________        !
! |                            |       !
! |                            |       !
! |                            |       !
! |___________________________ |       !
!                                      !
!  ____________________________        !
! |                            |       !
! |                            |       !
! |                            |       !
! |___________________________ |       !
!                                      !
!--------------------------------------

program loop
  integer :: a(10000)
  integer :: i
  
  !$ACC serial
  do i=1,10000
    a(i) = i
  enddo
  !$ACC end serial

end program loop

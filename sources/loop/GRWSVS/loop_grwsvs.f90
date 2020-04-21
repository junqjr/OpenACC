!--------------------------------------!
!                                      !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! serial GPU execution                 !
!                                      !
! Redundant execution by gang          !
! leaders                              !
! Active Threads : 10                  !
! Nb. of Operations : 10*nx            !
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
  do i=1,10000
    a(i) = i
  enddo
  !$ACC end parallel

end program loop

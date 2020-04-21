!--------------------------------------!
!                                      !
! loop_gpwpvs.f90                      !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! serial GPU execution                 !
!                                      !
! It. shared among active workers      !
! of each gang                         !
! Active Threads : 10*#workers         !
! Nb. of Operations : nx               !
!                                      !
!  ____________________________        !
! |x|                          |       !
! |x|                          |       !
! |x|                          |       !
! |x|_________________________ |       !
!                                      !
!  ____________________________        !
! |x|                          |       !
! |x|                          |       !
! |x|                          |       !
! |x|_________________________ |       !
!                                      !
!  ____________________________        !
! |x|                          |       !
! |x|                          |       !
! |x|                          |       !
! |x|_________________________ |       !
!                                      !
!--------------------------------------!

program loop
  integer :: a(10000)
  integer :: i
  
  !$ACC parallel num_gangs(10)
  !$ACC loop gang worker
  do i=1,10000
    a(i) = i
  enddo
  !$ACC end parallel

end program loop

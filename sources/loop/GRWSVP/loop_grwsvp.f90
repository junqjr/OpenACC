!--------------------------------------!
!                                      !
! looop_grwsvp.f90                     !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! serial GPU execution                 !
!                                      !
! Each gang is assgn. all the it.      !
! which are shared on the threads      !
! of the active worker.                !
! Active Threads : 10*vec_lenght       !
! Nb. of Operations : 10*nx            !
!                                      !
!  ____________________________        !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |                            |       !
! |                            |       !
! |___________________________ |       !
!                                      !
!  ____________________________        !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |                            |       !
! |                            |       !
! |___________________________ |       !
!                                      !
!  ____________________________        !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |                            |       !
! |                            |       !
! |___________________________ |       !
!                                      !
!--------------------------------------

program loop
  integer :: a(10000)
  integer :: i
  
  !$ACC parallel num_gangs(10)
  !$ACC loop vector
  do i=1,10000
    a(i) = i
  enddo
  !$ACC end parallel

end program loop

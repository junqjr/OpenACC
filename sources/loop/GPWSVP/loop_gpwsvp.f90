!--------------------------------------!
!                                      !
! loop_gpwsvp.f90                      !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! serial GPU execution                 !
!                                      !
! It. shared among threads of the      !
! worker of all gangs                  !
! Active Threads : 10*vec_lenght       !
! Nb. of Operations : nx               !
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
!--------------------------------------!

program loop
  integer :: a(10000)
  integer :: i
  
  !$ACC parallel num_gangs(10)
  !$ACC loop gang vector
  do i=1,10000
    a(i) = i
  enddo
  !$ACC end parallel

end program loop

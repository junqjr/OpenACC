!--------------------------------------!
!                                      !
! loop_gpwpvp.f90                      !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! serial GPU execution                 !
!                                      !
! It. shared on the grid of threads    !
! of all gangs                         !
! Active Threads :                     !
!         10*#workers*vec_lenght       !
! Nb. of Operations : nx               !
!                                      !
!  ____________________________        !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! ------------------------------       !
!  ____________________________        !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! ------------------------------       !
!  ____________________________        !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! |x|x|x|x|x|x|x|x|x|x|x|x|x|x |       !
! ------------------------------       !
!                                      !
!--------------------------------------!

program loop
  integer :: a(10000)
  integer :: i
  
  !$ACC parallel num_gangs(10)
  !$ACC loop gang worker vector
  do i=1,10000
    a(i) = i
  enddo
  !$ACC end parallel

end program loop

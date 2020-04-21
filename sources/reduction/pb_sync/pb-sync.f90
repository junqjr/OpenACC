!--------------------------------------!
!                                      !
! corr-sync.f90                        !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! Gang synchronization issue           !
!                                      !
! There is no thread sync.             !
! at gang level                        !
!                                      !
! Possible race condition              !
!                                      !
!--------------------------------------!

program reduction
  real    :: a(100000000)
  integer :: i
  integer :: nx=100000000
  real    :: summ=0
  !$acc parallel 
  !$acc loop gang
  do i=1,nx
    a(i) = 1.0_8
  enddo
  !$acc loop gang reduction(+:summ)
  do i=nx,1,-1
    summ = summ + a(i)
  enddo
  !$acc end parallel 
  write (*,*) summ
end program reduction
            


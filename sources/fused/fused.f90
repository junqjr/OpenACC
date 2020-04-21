!--------------------------------------!
!                                      !
! fused.f90                            !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! Directives fusion example            !
!                                      !
!--------------------------------------!

program fused
  integer :: a1(10000), b(10000),i
  integer :: a2(10000)
  integer :: summ1=0
  integer :: summ2=0
  !$acc kernels 
  do i=1,10000
    a1(i) = i
    a2(i) = i
    b(i) = i+i*i
  enddo
  !$acc end kernels
  !$acc kernels 
  !$acc loop 
  do i=1,10000
    a1(i) = b(i)*2
    summ1 = summ1 + a1(i)
  enddo
  !$acc end kernels
  !$acc kernels loop worker vector
  do i=1,10000
    a2(i) = b(i)*2
    summ2 = summ2 + a2(i)
  enddo
  write (*,*) summ1
  write (*,*) summ2
end program fused
            


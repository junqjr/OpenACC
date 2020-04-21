! loop.f90
! OpenACC exemple

program loop
  integer :: a(10000)
  integer :: i
  
  !$ACC parallel
  a = 0 !!! Gang redundant
  !$ACC loop !!! Work sharing
  do i=1,10000
    a(i) = i
  enddo
  !$ACC end parallel

end program loop

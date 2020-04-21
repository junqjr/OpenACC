! loop.f90
! OpenACC exemple

program loop
  integer :: a(10000)
  integer :: i
  
  !$ACC parallel loop
  do i=1,10000
    a(i) = i
  enddo

end program loop

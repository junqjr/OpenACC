! loop.f90
! OpenACC exemple

module var
  integer :: i
  integer, parameter :: maxi=10000
  integer :: a(maxi)
  !$ACC declare copyout( i, maxi, a(:) )
end module var

program loop
  use var
  !$ACC parallel loop
  do i=1,maxi
    a(i) = i
  enddo
  write(*,*) a(maxi)
end program loop

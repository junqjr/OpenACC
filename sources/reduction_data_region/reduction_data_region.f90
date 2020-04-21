!
! OpenACC examples
!
! Carlos JUNQUEIRA Junior 
! junior.junqueira@ensam.eu
!
! loop reduction example
!
!--------------------------------------

program reduction
  integer :: a(10000)
  integer :: i
  integer :: summ=0
  !$acc data create (a(1:10000))
  !$acc parallel loop
  do i=1,10000
    a(i) = i
  enddo
  !$acc parallel loop reduction(+:summ)
  do i=1,10000
    summ = summ + a(i)
  enddo
  !$acc end data
end program reduction
            


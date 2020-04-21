!
! OpenACC examples
!
! Carlos JUNQUEIRA Junior 
! junior.junqueira@ensam.eu
!
! parallel parameters
!
!--------------------------------------

program param
  integer :: a(1000)
  integer :: i
  !$acc parallel num_gangs(10)&
  !$acc& num_workers(1)       &
  !$acc& vector_length(128)
  print *, "Hello I am a gang"
  do i=1,1000
    a(i) = i
  enddo
  !$acc end parallel
end program param
            


!--------------------------------------!
!                                      !
! array-shape.f90                      !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! It is necessary to specify the       !
! shape of an array in order to        !
! transfert it                         !
!                                      !
!--------------------------------------

program array_shape
  integer :: i,j
  integer :: s = 10000
  integer , dimension(:,:), allocatable :: a
  
  allocate( a(s,s) )

  !Copy a 2-D array on the GPU - matrix "a"
  !$ACC parallel loop gang copy(a(1:s,1:s))
  do j=1,s
    !$ACC loop worker vector
    do i=1,s
      a(i,j) = 0
    enddo
  enddo
  !Copyout columns 100 to 199 included
  !to the host
  !$ACC parallel loop gang copy(a(1:s,100:199))
  do j=100,199
    !$ACC loop worker vector
    do i=1,s
      a(i,j) = 42
    enddo
  enddo
  write(*,*) a(1,10)
  write(*,*) a(1,100)
  write(*,*) a(1,199)
  deallocate(a)

end program array_shape

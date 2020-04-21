!--------------------------------------!
!                                      !
! routine-corr.f90                     !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! It is mandatory to set parallism     !
! level inside the function            !
! seq, gang, worker, vector            !
!                                      !
!--------------------------------------

program routine
  integer :: i
  integer :: s = 10000
  integer , dimension(:,:), allocatable :: a
  
  allocate( a(s,s) )

  !$ACC parallel copyout(a)
  !$ACC loop
  do i=1,s
    call fill( a(:,:), s, i )
  enddo
  !$ACC end parallel
  write(*,*) a(1,10)
  contains
  subroutine fill( arr, j, k )
    !$ACC routine seq
    integer, intent(out) :: arr(:,:)
    integer, intent(in)  :: j, k
    integer :: l
    do l=1,j
      arr(k,l) = 2
    enddo
  end subroutine

end program routine

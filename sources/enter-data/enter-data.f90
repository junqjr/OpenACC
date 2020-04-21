!--------------------------------------!
!                                      !
! enter-data.f90                       !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! Use of data directive to menage data !
! transfert on the device at another   !
! place than where they are used.      !
!                                      !
! Specially useful when using C++      !
! contructors and destructors.         !
!                                      !
!--------------------------------------

program enterdata
  integer :: s = 10000
  real*8, allocatable, dimension(:) :: vec

  allocate( vec(1:s) )
  !$ACC enter data create( vec(1:s) )
  call compute
  !$ACC exit data delete( vec(1:s) )
  contains
  subroutine compute
    integer :: i
    !$ACC parallel loop
    do i=1,s
      vec(i) = i
    enddo
  end subroutine

end program enterdata

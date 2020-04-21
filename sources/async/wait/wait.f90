!--------------------------------------!
!                                      !
! async-2.f90                          !
! OpenACC examples                     !
!                                      !
! Carlos JUNQUEIRA Junior              !
! junior.junqueira@ensam.eu            !
!                                      !
! Synchronous computation and data     !
! transfers.                           !
!                                      !
! K1           |xxxx|                  !
! data transnf |xxx |                  !
! K2           |xx  |                  !
!                                      !
!--------------------------------------

program async
integer :: i
integer :: s = 10000
integer, dimension (:), allocatable :: a, b, c
allocate( a(1:s) )
allocate( b(1:s) )
allocate( c(1:s) )
!$ACC enter data create( a(1:s), b(1:s),&
!$ACC& c(1:s) )
! b is initialized on host
do i=1,s
  b(i) = i
enddo
!$ACC parallel loop async(1)
do i=1,s
  a(i) = 42
enddo
! Update vector b located on device 
! with data from the host
!$ACC update device(b) async(2)
!$ACC parallel loop async(3)
do i=1,s
  c(i) = 1
enddo
!$ACC parallel loop wait(2)
do i=1,s
  b(i) = b(i)*i
enddo
!$ACC exit data delete( a(1:s), b(1:s),&
!$ACC& c(1:s) )

end program async

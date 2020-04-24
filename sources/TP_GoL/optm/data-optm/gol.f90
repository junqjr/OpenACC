program gol
 implicit none
 integer :: rows, cols, generations
 integer, allocatable :: world(:,:), old_world(:,:)
 integer :: c, g, i, r
 integer :: long, neigh, cells
 character(len=:), allocatable :: arg
 integer, dimension(3) :: n
 ! Read cmd line args
 DO i=1, COMMAND_ARGUMENT_COUNT()
  CALL GET_COMMAND_ARGUMENT(NUMBER=i, LENGTH=long)
  ALLOCATE(CHARACTER(len=long) :: arg)
  CALL GET_COMMAND_ARGUMENT(NUMBER=i, VALUE=arg)
  READ(arg,'(i10)') n(i)
  DEALLOCATE(arg)
 END DO
 rows=n(1)
 cols=n(2)
 generations=n(3)
 allocate(world(0:rows+1,0:cols+1), old_world(0:rows+1,0:cols+1))
 old_world(:,:) = 0
 call fill_world
 !$ACC data copy( world(0:rows+1,0:cols+1) ) &
 !$ACC& create (old_world(0:rows+1,0:cols+1))
 do g=1,generations
  do r=1, rows
   do c=1, cols
    old_world(r,c) = world(r,c)
   enddo
  enddo
  do r=1, rows
   do c=1, cols
    neigh = old_world(r-1,c-1)+old_world(r,c-1)+&
    old_world(r+1,c-1)+old_world(r-1,c)+old_world(r+1,c)+&
    old_world(r-1,c+1)+old_world(r,c+1)+old_world(r+1,c+1)
    if (old_world(r,c) == 1 .and. (neigh<2.or.neigh>3) ) then
     world(r,c) = 0
    else if (neigh == 3) then
     world(r,c) = 1
    endif
   enddo
  enddo
  cells = 0
  do r=1, rows
   do c=1, cols
    cells = cells + world(r,c) 
   enddo
  enddo
  print *, "Cells alive at generation ", g, ": ", cells
 enddo
 !$ACC end data

 deallocate(world, old_world)

 contains

 subroutine fill_world
     implicit none
     integer :: r,c
     real*8 :: test
     do r=1,rows
         do c=1,cols
             ! random_number is not available for OpenACC yet
             call random_number(test)
             world(r,c) = mod(mod(floor(test*100),4),2)
         enddo
     enddo
 end subroutine fill_world

end program gol

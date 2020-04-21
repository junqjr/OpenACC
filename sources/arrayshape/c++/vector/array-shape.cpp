//-------------------------------------!
//                                     !
// array-shape.cpp                     !
// OpenACC examples                    !
//                                     !
// Carlos JUNQUEIRA Junior             !
// junior.junqueira@ensam.eu           !
//                                     !
// It is necessary to specify the      !
// shape of an array in order to       !
// transfert it                        !
//                                     !
//-------------------------------------

// Your First C++ Program

#include <iostream>
#include <vector>

int main() {

 int s = 10000;
 std::vector< std::vector<int> > a;
 //int** a = new int*[s];
 //for (int i = 0; i < s; ++i)
 //    a[i] = new int[s];

 // Copy the array "a" by giving first element
 // and the size of the array
 #pragma acc parallel loop gang copy (a[0:s][0:s])
 for (int i=0; i<s; ++i )
   #pragma acc loop worker vector
   for ( int j=0; j<s; ++j )
     a[i][j]=0;
 // Copy copy columns 99 to 198
 #pragma acc parallel loop gang copy ( a[0:s][99:100] )
 for (int i=0; i<s; ++i)
   #pragma acc loop worker vector
   for (int j=99; j<199; ++j)
     a[i][j]=42;

 std::cout << a[0][10] <<"\n";
 std::cout << a[0][99] <<"\n";
 std::cout << a[0][198] <<"\n";

 //for (int i=0; i<s; ++i)
 //  delete [] a[i];
 //delete [] a;

 return 0;

}

//program array_shape
//  integer :: i,j
//  integer :: s = 10000
//  integer , dimension(:,:), allocatable :: a
//  
//  allocate( a(s,s) )
//
//  !Copy a second array on the GPU
//  !for a matrix "a"
//  !$ACC parallel loop copy(a(1:s,1:s))
//  do i=1,s
//    do j=1,s
//      a(i,j) = 0
//    enddo
//  enddo
//  !Copyout columns 100 to 199 included
//  !to the host
//  !$ACC parallel loop copy(a(:,100:199))
//  do i=1,s
//    do j=1,s
//      a(i,j) = 42
//    enddo
//  enddo
//  write(*,*) a(1,10)
//  write(*,*) a(1,100)
//  write(*,*) a(1,199)
//
//end program array_shape

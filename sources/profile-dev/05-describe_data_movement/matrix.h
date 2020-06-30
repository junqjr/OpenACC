/*
 *  Copyright 2014 NVIDIA Corporation
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
#pragma once

#include<cstdlib>

struct matrix {
  unsigned int num_rows;
  unsigned int nnz;
  unsigned int *row_offsets;
  unsigned int *cols;
  double *coefs;
};


void allocate_3d_poisson_matrix(matrix &A, int N) {
  int num_rows=(N+1)*(N+1)*(N+1);
  int nnz=27*num_rows;
  A.num_rows=num_rows;
  A.row_offsets=(unsigned int*)malloc((num_rows+1)*sizeof(unsigned int));
  A.cols=(unsigned int*)malloc(nnz*sizeof(unsigned int));
  A.coefs=(double*)malloc(nnz*sizeof(double));

  int offsets[27];
  double coefs[27];
  int zstride=N*N;
  int ystride=N;
  
  int i=0;
  for(int z=-1;z<=1;z++) {
    for(int y=-1;y<=1;y++) {
      for(int x=-1;x<=1;x++) {
        offsets[i]=zstride*z+ystride*y+x;
        if(x==0 && y==0 && z==0)
          coefs[i]=27;
        else
          coefs[i]=-1;
        i++;
      }
    }
  }

  nnz=0;
  for(int i=0;i<num_rows;i++) {
    A.row_offsets[i]=nnz;
    for(int j=0;j<27;j++) {
      int n=i+offsets[j];
      if(n>=0 && n<num_rows) {
        A.cols[nnz]=n;
        A.coefs[nnz]=coefs[j];
        nnz++;
      }
    }
  }

  A.row_offsets[num_rows]=nnz;
  A.nnz=nnz;
#pragma acc enter data copyin(A)
#pragma acc enter data copyin(A.row_offsets[0:num_rows+1],A.cols[0:nnz],A.coefs[0:nnz])
}

void free_matrix(matrix &A) {
  unsigned int *row_offsets=A.row_offsets;
  unsigned int * cols=A.cols;
  double * coefs=A.coefs;

#pragma acc exit data delete(A.row_offsets,A.cols,A.coefs)
#pragma acc exit data delete(A)
  free(row_offsets);
  free(cols);
  free(coefs);
}

//OpenACC data model is host-first, data directives that allocate data on the
//device must appear "after" host allocations (malloc, allocate, new, etc.)
//and data directives that deallocate device data must apear "before" host
//deallocations (free, deallocate, delete, etc.).

//The A structure, used in "allocate_3d_possion_matrix" function, contains two 
//scalar numbers, plus 3 pointers that are used on the device. The copyin of A
//at line 71 copies the structure, with the 5 elements that were described here.
//When the 3 pointers are copied, however, they will contain pointers back to 
//the host memory, since the pointers were simply copied on the device. It is 
//then necessary to copy the data pointed to by those pointers, which is done
//in line 72. it gives the three arrays contained in A shapes and copies their
//data to the device.

//When removing the data from the device in the "free_matrix" function, the
//data transferts should be done in the reverse order of what was performed 
//in "allocate_3d_possion_matrix" function.


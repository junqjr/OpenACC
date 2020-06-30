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
#include<cmath>

struct vector {
  unsigned int n;
  double *coefs;
};

void allocate_vector(vector &v, unsigned int n) {
  v.n=n;
  v.coefs=(double*)malloc(n*sizeof(double));
#pragma acc enter data create(v)
#pragma acc enter data create(v.coefs[0:n])
}

void free_vector(vector &v) {
#pragma acc exit data delete(v.coefs)
#pragma acc exit data delete(v)
  free(v.coefs);
  v.n=0;
}

void initialize_vector(vector &v,double val) {

  for(int i=0;i<v.n;i++)
    v.coefs[i]=val;
#pragma acc update device(v.coefs[0:v.n])
}

//OpenACC data model is host-first, data directives that allocate data on the
//device must appear "after" host allocations (malloc, allocate, new, etc.)
//and data directives that deallocate device data must apear "before" host
//deallocations (free, deallocate, delete, etc.).

//The "allocate_vector" and "free_vector" functions can be similarly modified
//to relocate Vector structures to the accelerator as well. Since "allocate_vector"
//function does not initialize the vector with any data, the create data clause 
//can be used to allocate memory without causing any data copies to occur.

//An update directive can be used in "initialize_vector" function  to copy the
//data in the initialized host vector to the device.

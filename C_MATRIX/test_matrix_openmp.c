
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
#include "omp.h"
#include "matrix.h"

int main(void){

 printf("Testing: Performance and Function Integrity when with OpenMP\n");
 printf("Testing: setAllMatrixOpenMP\n");
   {
    int size = 8000;
    matrix * mat = newMatrix(size,size);
    assert(mat);
    printf("Testing: Performance setAll\n");

    omp_set_num_threads(1);
    double t0 = omp_get_wtime();
    int rv = setAllMatrixOpenMP(mat,1.0);
    assert(rv==0);
    double t1 = omp_get_wtime();
    double elapsed = (t1-t0);
    // Check that all values were set to 1.0
    for(int r=0;r<size;r++){
      for(int c=0;c<size;c++){
        float temp;
        getElemMatrix(mat,r,c,&temp);
        assert(temp==1.0);
      }
    }
    printf("Serial run time %g\n",elapsed);

    omp_set_num_threads(4);
    t0 = omp_get_wtime();
    rv = setAllMatrixOpenMP(mat,2.0);
    assert(rv==0);
    t1 = omp_get_wtime();
    elapsed = (t1-t0);
    for(int r=0;r<size;r++){
      for(int c=0;c<size;c++){
        float temp;
        getElemMatrix(mat,r,c,&temp);
        assert(temp==2.0);
      }
    }
    printf("Parallel run time %g\n",elapsed);

    deleteMatrix(&mat);
  }

  printf("Testing: sumAllElemsMatrixOpenMP\n");
  {
    int size = 2000;
    matrix * mat = newMatrix(size,size);
    assert(mat);

    omp_set_num_threads(1);
    int rv = setAllMatrix(mat,1.0);
    assert(rv==0);
    float sum;
    double t0 = omp_get_wtime();
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    assert(rv==0);
    printf("%f and %f\n",sum,(float)size*size);
    assert(sum==(float)size*size);
    double t1 = omp_get_wtime();
    double elapsed = (t1-t0);
    printf("Serial run time %g\n",elapsed);

    rv = setAllMatrix(mat,2.0);
    omp_set_num_threads(4);
    t0 = omp_get_wtime();
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    assert(rv==0);
    assert(sum==((float)size*size)*2.0);
    t1 = omp_get_wtime();
    elapsed = (t1-t0);
    printf("Parallel run time %g\n",elapsed);

    deleteMatrix(&mat);
  }

  printf("Testing: sumAllElemsMatrixOpenMP\n");
  {
    int size = 2000;
    matrix * mat = newMatrix(size,size);
    assert(mat);

    omp_set_num_threads(1);
    int rv = setAllMatrix(mat,1.0);
    assert(rv==0);
    float sum;
    double t0 = omp_get_wtime();
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    assert(rv==0);
    printf("%f and %f\n",sum,(float)size*size);
    assert(sum==(float)size*size);
    double t1 = omp_get_wtime();
    double elapsed = (t1-t0);
    printf("Serial run time %g\n",elapsed);

    rv = setAllMatrix(mat,2.0);
    omp_set_num_threads(4);
    t0 = omp_get_wtime();
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    assert(rv==0);
    assert(sum==((float)size*size)*2.0);
    t1 = omp_get_wtime();
    elapsed = (t1-t0);
    printf("Parallel run time %g\n",elapsed);

    deleteMatrix(&mat);
  }

  printf("Testing: addAllMatrixOpenMP\n");
  {
    int size = 1000;
    matrix * mat = newMatrix(size,size);
    assert(mat);
    setElemMatrix(mat,0,0,1.0);
    setElemMatrix(mat,(size-1),0,1.0);
    setElemMatrix(mat,0,(size-1),1.0);
    setElemMatrix(mat,(size-1),(size-1),1.0);
    setElemMatrix(mat,(int)((float)size/4.0*2),(size-1),1.0);
    setElemMatrix(mat,(int)((float)size/4.0*3),(size-1),1.0);
    omp_set_num_threads(1);
    float sum;
    double t0 = omp_get_wtime();
    int rv = addAllMatrixOpenMP(mat,1.0);
    double t1 = omp_get_wtime();
    assert(rv==0);
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    printf("sum %f\n",sum);
    assert(sum==(float)(size*size+6.0));
    double elapsed = (t1-t0);
    printf("Serial run time %g\n",elapsed);

    omp_set_num_threads(4);
    t0 = omp_get_wtime();
    rv = addAllMatrixOpenMP(mat,1.0);
    t1 = omp_get_wtime();
    assert(rv==0);
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    printf("sum %f\n",sum);
    assert(sum==(float)(size*size*2.0+6.0));
    elapsed = (t1-t0);
    printf("Parallel run time %g\n",elapsed);

    deleteMatrix(&mat);
  }

  printf("Testing: subAllMatrixOpenMP\n");
  {
    int size = 1000;
    matrix * mat = newMatrix(size,size);
    assert(mat);
    setElemMatrix(mat,0,0,1.0);
    setElemMatrix(mat,(size-1),0,1.0);
    setElemMatrix(mat,0,(size-1),1.0);
    setElemMatrix(mat,(size-1),(size-1),1.0);
    setElemMatrix(mat,(int)((float)size/4.0*2),(size-1),1.0);
    setElemMatrix(mat,(int)((float)size/4.0*3),(size-1),1.0);
    omp_set_num_threads(1);
    float sum;
    double t0 = omp_get_wtime();
    int rv = subAllMatrixOpenMP(mat,1.0);
    double t1 = omp_get_wtime();
    assert(rv==0);
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    printf("sum %f\n",sum);
    assert(sum==(float)(-size*size+6.0));
    double elapsed = (t1-t0);
    printf("Serial run time %g\n",elapsed);

    omp_set_num_threads(4);
    t0 = omp_get_wtime();
    rv = subAllMatrixOpenMP(mat,1.0);
    t1 = omp_get_wtime();
    assert(rv==0);
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    printf("sum %f\n",sum);
    assert(sum==(float)(-size*size*2.0+6.0));
    elapsed = (t1-t0);
    printf("Parallel run time %g\n",elapsed);

    deleteMatrix(&mat);
  }

  printf("Testing: mulAllMatrixOpenMP\n");
  {
    int size = 1000;
    matrix * mat = newMatrix(size,size);
    assert(mat);
    int rv = setAllMatrixOpenMP(mat,1.0);
    setElemMatrix(mat,0,0,2.0);
    setElemMatrix(mat,(size-1),0,2.0);
    setElemMatrix(mat,0,(size-1),2.0);
    setElemMatrix(mat,(size-1),(size-1),2.0);
    setElemMatrix(mat,(int)((float)size/4.0*2),(size-1),2.0);
    setElemMatrix(mat,(int)((float)size/4.0*3),(size-1),2.0);
    omp_set_num_threads(1);
    float sum;
    double t0 = omp_get_wtime();
    rv = mulAllMatrixOpenMP(mat,2.0);
    double t1 = omp_get_wtime();
    assert(rv==0);
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    printf("sum %f\n",sum);
    assert(sum==(float)((size*size-6.0)*2.0+6.0*2.0*2.0));
    double elapsed = (t1-t0);
    printf("Serial run time %g\n",elapsed);

    omp_set_num_threads(4);
    t0 = omp_get_wtime();
    rv = mulAllMatrixOpenMP(mat,0.5);
    t1 = omp_get_wtime();
    assert(rv==0);
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    printf("sum %f\n",sum);
    assert(sum==(float)(size*size+6.0));
    elapsed = (t1-t0);
    printf("Parallel run time %g\n",elapsed);

    deleteMatrix(&mat);
  }

  printf("Testing: divAllMatrixOpenMP\n");
  {
    int size = 1000;
    matrix * mat = newMatrix(size,size);
    assert(mat);
    int rv = setAllMatrixOpenMP(mat,1.0);
    setElemMatrix(mat,0,0,2.0);
    setElemMatrix(mat,(size-1),0,2.0);
    setElemMatrix(mat,0,(size-1),2.0);
    setElemMatrix(mat,(size-1),(size-1),2.0);
    setElemMatrix(mat,(int)((float)size/4.0*2),(size-1),2.0);
    setElemMatrix(mat,(int)((float)size/4.0*3),(size-1),2.0);
    omp_set_num_threads(1);
    float sum;
    double t0 = omp_get_wtime();
    rv = divAllMatrixOpenMP(mat,2.0);
    double t1 = omp_get_wtime();
    assert(rv==0);
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    printf("sum %f\n",sum);
    assert(sum==(float)(size*size)*0.5+3.0);
    double elapsed = (t1-t0);
    printf("Serial run time %g\n",elapsed);

    omp_set_num_threads(4);
    t0 = omp_get_wtime();
    rv = divAllMatrixOpenMP(mat,0.5);
    t1 = omp_get_wtime();
    assert(rv==0);
    rv = sumAllElemsMatrixOpenMP(mat,&sum);
    printf("sum %f\n",sum);
    assert(sum==(float)(size*size+6.0));
    elapsed = (t1-t0);
    printf("Parallel run time %g\n",elapsed);

    deleteMatrix(&mat);
  }


  return 0;
}


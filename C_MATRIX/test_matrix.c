/******************************************************************************/
/*                                                                            *
 *          Joshua Brown                                                      *
 *          Scientific Computing                                              *
 *          test_matrix.c function                                            *
 *                                                                            *
 *                                                                            *
 * This function tests the following functions:                               *
 *		o newMatrix                                                             *
 *    o deleteMatrix                                                          *
 *    o printMatrix                                                           *
 *    o printIntMatrix                                                        *
 *    o getRowsMatrix			                                                    *
 *		o getColsMatrix                                                         *
 *		o sumAllElemsMatrix                                                     *
 *    o getTotalElemsMatrix                                                   *
 *    o getElemMatrix                                                         *
 *    o setElemMatrix                                                         *
 *		o setAllMatrix                                                          *
 *    o addAllMatrix                                                          *
 *		o subAllMatrix                                                          *
 *    o mulAllMatrix                                                          *
 *    o divAllMatrix                                                          *
 *    o copyMatrix                                                            *
 ******************************************************************************/
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
#include "omp.h"
#include "matrix.h"


int main(void){

    /* Creator                                                                  */
/*  {
    printf("Testing: newMatrix\n");
    matrix * mat = newMatrix(0,1);
    assert(mat==NULL);
    mat = newMatrix(1,0); assert(mat==NULL);
    mat = newMatrix(1,1);
    assert(mat!=NULL);
    printf("Testing: deleteMatrix\n");
    int rv = deleteMatrix(NULL);
    assert(rv==-1);
    rv = deleteMatrix(&mat);
    assert(rv==0);
    assert(mat==NULL);
  }

  printf("Testing: printMatrix\n");
  {
    matrix * mat = newMatrix(2,3);
    assert(mat!=NULL);
    int rv = printMatrix(NULL);
    assert(rv==-1);
    rv = printMatrix(mat);
    assert(rv==0);
    deleteMatrix(&mat);
    assert(mat==NULL);
  }

  printf("Testing: printIntMatrix\n");
  {
    matrix * mat = newMatrix(2,3);
    assert(mat!=NULL);
    int rv = printIntMatrix(NULL);
    assert(rv==-1);
    rv = printIntMatrix(mat);
    assert(rv==0);
    deleteMatrix(&mat);
    assert(mat==NULL);
  }

  printf("Testing: getRowsMatrix\n");
  {
    matrix * mat = newMatrix(2,3);
    assert(mat!=NULL);
    int rv = getRowsMatrix(NULL);
    assert(rv==-1);
    rv = getRowsMatrix(mat);
    assert(rv==2);
    deleteMatrix(&mat);
    assert(mat==NULL);
  }

  printf("Testing: getColsMatrix\n");
  {
    matrix * mat = newMatrix(2,3);
    assert(mat!=NULL);
    int rv = getColsMatrix(NULL);
    assert(rv==-1);
    rv = getColsMatrix(mat);
    assert(rv==3);
    deleteMatrix(&mat);
    assert(mat==NULL);
  }

  printf("Testing: sumAllElemsMatrix\n");
  {
    matrix * mat = newMatrix(2,3);
    assert(mat!=NULL);
    float sum = 1.0;
    int rv = sumAllElemsMatrix(NULL,&sum);
    assert(rv==-1);
    rv = sumAllElemsMatrix(mat,NULL);
    assert(rv==-1);
    rv = sumAllElemsMatrix(mat,&sum);
    assert(rv==0);
    float temp = 0.0;
    assert(sum==temp);
    deleteMatrix(&mat);
    assert(mat==NULL);
  }

  printf("Testing: getTotalElemsMatrix\n");
  {
    matrix * mat = newMatrix(2,3);
    assert(mat!=NULL);
    int rv = getTotalElemsMatrix(NULL);
    assert(rv==-1);
    rv = getTotalElemsMatrix(mat);
    assert(rv==(2*3));
    deleteMatrix(&mat);
    assert(mat==NULL);
  }

  printf("Testing: getElemMatrix\n");
  {
    matrix * mat = newMatrix(3,4);
    float val = 1.0;
    int rv = getElemMatrix(NULL,0,0,&val);
    assert(rv==-1);
    assert(val==1.0);
    rv = getElemMatrix(mat,0,0,NULL);
    assert(rv==-1);
    rv = getElemMatrix(mat,-1,0,&val);
    assert(rv==-1);
    assert(val==1.0);
    rv = getElemMatrix(mat,0,-1,&val);
    assert(rv==-1);
    assert(val==1.0);
    rv = getElemMatrix(mat,3,0,&val);
    assert(rv==-1);
    assert(val==1.0);
    rv = getElemMatrix(mat,0,4,&val);
    assert(rv==-1);
    assert(val==1.0);
    rv = getElemMatrix(mat,0,0,&val);
    assert(rv==0);
    assert(val==0.0);
    deleteMatrix(&mat);
    assert(mat==NULL);
  }

    printf("Testing: setElemMatrix\n");
  {
    matrix * mat = newMatrix(3,4);
    int rv = setElemMatrix(mat,-1,0,1.0);
    assert(rv==-1);
    rv = setElemMatrix(mat,0,-1,1.0);
    assert(rv==-1);
    rv = setElemMatrix(NULL,0,0,1.0);
    assert(rv==-1);
    rv = setElemMatrix(mat,3,0,1.0);
    assert(rv==-1);
    rv = setElemMatrix(mat,0,4,1.0);
    assert(rv==-1);
    rv = setElemMatrix(mat,0,0,1.0);
    assert(rv==0);
    deleteMatrix(&mat);
    assert(mat==NULL);
  }

  printf("Testing: setAllMatrix\n");
  {
    matrix * mat = newMatrix(5,2);
    assert(mat!=NULL);
    int rv = setAllMatrix(NULL,1.0);
    assert(rv==-1);
    rv = setAllMatrix(mat,1.0);
    assert(rv==0);
    float sum;
    rv = sumAllElemsMatrix(mat,&sum);
    printMatrix(mat);
    assert(rv==0);
    assert(sum==10.0);
    deleteMatrix(&mat);
    assert(mat==NULL);
  }

  printf("Testing: addAllMatrix\n");
  {
    matrix * mat = newMatrix(5,2);
    assert(mat!=NULL);
    int rv = setAllMatrix(mat,1.0);
    assert(rv==0);
    rv = addAllMatrix(NULL,1.0);
    assert(rv==-1);
    float sum;
    rv = sumAllElemsMatrix(mat,&sum);
    assert(rv==0);
    assert(sum==10.0);
    rv = addAllMatrix(mat,1.0);
    assert(rv==0);
    rv = sumAllElemsMatrix(mat,&sum);
    assert(rv==0);
    assert(sum==20.0);
    deleteMatrix(&mat);
  }

  printf("Testing: subAllMatrix\n");
  {
    matrix * mat = newMatrix(5,2);
    assert(mat!=NULL);
    int rv = setAllMatrix(mat,1.0);
    assert(rv==0);
    rv = addAllMatrix(mat,1.0);
    assert(rv==0);
    rv = subAllMatrix(NULL,1.0);
    assert(rv==-1);
    float sum;
    rv = sumAllElemsMatrix(mat,&sum);
    assert(rv==0);
    assert(sum==20.0);
    rv = subAllMatrix(mat,1.0);
    assert(rv==0);
    rv = sumAllElemsMatrix(mat,&sum);
    assert(rv==0);
    assert(sum==10.0);
    deleteMatrix(&mat);
  }

  printf("Testing: mulAllMatrix\n");
  {
    matrix * mat = newMatrix(5,2);
    assert(mat!=NULL);
    int rv = setAllMatrix(mat,1.0);
    assert(rv==0);
    rv = mulAllMatrix(NULL,3.0);
    assert(rv==-1);
    float sum;
    rv = sumAllElemsMatrix(mat,&sum);
    assert(rv==0);
    assert(sum==10.0);
    rv = mulAllMatrix(mat,3.0);
    assert(rv==0);
    rv = sumAllElemsMatrix(mat,&sum);
    assert(rv==0);
    assert(sum==30.0);
    deleteMatrix(&mat);
  }

  printf("Testing: divAllMatrix\n");
  {
    matrix * mat = newMatrix(5,2);
    assert(mat!=NULL);
    int rv = setAllMatrix(mat,1.0);
    assert(rv==0);
    rv = mulAllMatrix(mat,3.0);
    assert(rv==0);
    rv = divAllMatrix(NULL,3.0);
    assert(rv==-1);
    float sum;
    rv = sumAllElemsMatrix(mat,&sum);
    assert(rv==0);
    assert(sum==30.0);
    rv = divAllMatrix(mat,3.0);
    assert(rv==0);
    rv = sumAllElemsMatrix(mat,&sum);
    assert(rv==0);
    assert(sum==10.0);
    deleteMatrix(&mat);
  }

  printf("Testing: copyMatrix\n");
  {
    matrix * mat = newMatrix(1,1);
    matrix * mat2 = NULL;
    int rv = copyMatrix(1,1,0,1,mat,&mat2);
    assert(rv==-1);
    rv = copyMatrix(0,1,1,1,mat,&mat2);
    assert(rv==-1);
    rv = copyMatrix(-1,1,0,1,mat,&mat2);
    assert(rv==-1);
    rv = copyMatrix(0,1,-1,1,mat,&mat2);
    assert(rv==-1);
    rv = copyMatrix(0,2,0,1,mat,&mat2);
    assert(rv==-1);
    rv = copyMatrix(0,1,0,2,mat,&mat2);
    assert(rv==-1);
    rv = copyMatrix(0,1,0,1,NULL,&mat2);
    assert(rv==-1);
    rv = copyMatrix(0,1,0,1,mat,NULL);
    assert(rv==-1);
    rv = copyMatrix(0,1,0,1,mat,&mat2);
    assert(rv==-1);
    mat2 = newMatrix(2,1);
    rv = copyMatrix(0,1,0,1,mat,&mat2);
    assert(rv==-0);
    deleteMatrix(&mat2);
    deleteMatrix(&mat);
    mat = newMatrix(2,2);
    mat2 = newMatrix(1,1);
    rv = copyMatrix(0,2,0,2,mat,&mat2);
    assert(rv==-1);
    deleteMatrix(&mat2);
    deleteMatrix(&mat);
  }
*/
  printf("Testing: Performance\n");
  {
    matrix * mat = newMatrix(18000,18000);
    assert(mat);
    printf("Testing: Performance setAll\n");
    omp_set_num_threads(1);
    //clock_t t0 = clock();
    double t0 = omp_get_wtime();
    int rv = setAllMatrix(mat,1.0);
    assert(rv==0);
    //clock_t t1 = clock();
    double t1 = omp_get_wtime();
    double elapsed = (t1-t0);
    printf("Serial run time %g\n",elapsed);
    omp_set_num_threads(2);
    t0 = omp_get_wtime();
    rv = setAllMatrix(mat,2.0);
    assert(rv==0);
    t1 = omp_get_wtime();
    elapsed = (t1-t0);
    printf("Parallel run time %g\n",elapsed);
    deleteMatrix(&mat);
  }


  return 0;
}

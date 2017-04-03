/******************************************************************************/
/*                                                                            *
 *          Joshua Brown                                                      *
 *          Scientific Computing                                              *
 *          test_matrix.c function                                            *
 *                                                                            *
 *                                   *
 * This function tests the following functions:                                   *
 *		o new_matrix                                   *
 *      o print_matrix                                   *
 *      o delete_matrix                                   *
 *      o get_rows                                   *
 *      o get_cols			                                   *
 *		o get_total_elems                                   *
 *		o new_matrix_row_panel                                   *
 *      o set_elem_core_matrix                                   *
 *      o get_elem_core_matrix                                   *
 *      o set_elem_top_row_ghost_matrix                                   *
 *		o get_elem_top_row_ghost_matrix                                         *
 *      o set_elem_bottom_row_ghost_matrix                                   *
 *		o get_elem_bottom_row_ghost_matrix                                         *
 *      o get_rows_core_matrix                                   *
 *      o get_cols_core_matrixv                                   *
 ******************************************************************************/
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

#include "matrix.h"


int main(void){

  /* Creator                                                                  */
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

	printf("Testing: printMatrix\n");
  mat = newMatrix(2,3);
  assert(mat!=NULL);
	rv = printMatrix(NULL);
	assert(rv==-1);
	rv = printMatrix(mat);
	assert(rv==0);

  printf("Testing: printIntMatrix\n");
  rv = printIntMatrix(NULL);
  assert(rv==-1);
  rv = printIntMatrix(mat);
  assert(rv==0);

	printf("Testing: getRowsMatrix\n");
	rv = getRowsMatrix(NULL);
	assert(rv==-1);
	rv = getRowsMatrix(mat);
	assert(rv==2);

	printf("Testing: getColsMatrix\n");
	rv = getColsMatrix(NULL);
	assert(rv==-1);
	rv = getColsMatrix(mat);
	assert(rv==3);

  printf("Testing: sumAllElemsMatrix\n");
  float sum = 1.0;
  rv = sumAllElemsMatrix(NULL,&sum);
  assert(rv==-1);
  rv = sumAllElemsMatrix(mat,NULL);
  assert(rv==-1);
  rv = sumAllElemsMatrix(mat,&sum);
  assert(rv==0);
  assert(sum==0.0);

  printf("Testing: getTotalElemsMatrix\n");
  rv = getTotalElemsMatrix(NULL);
  assert(rv==-1);
  rv = getTotalElemsMatrix(mat);
  assert(rv==(2*3));
  deleteMatrix(&mat);
  assert(mat==NULL);

  printf("Testing: getElemMatrix\n");
  mat = newMatrix(3,4);
  float val = 1.0;
  rv = getElemMatrix(NULL,0,0,&val);
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

  printf("Testing: setElemMatrix\n");
  mat = newMatrix(3,4);
  rv = setElemMatrix(mat,-1,0,1.0);
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

  printf("Testing: setAllMatrix\n");
  mat = newMatrix(5,2);
  assert(mat!=NULL);
  rv = setAllMatrix(NULL,1.0);
  assert(rv==-1);
  rv = setAllMatrix(mat,1.0);
  assert(rv==0);
  rv = sumAllElemsMatrix(mat,&sum);
  assert(rv==0);
  assert(sum==10.0);

  printf("Testing: addAllMatrix\n");
  rv = addAllMatrix(NULL,1.0);
  assert(rv==-1);
  rv = sumAllElemsMatrix(mat,&sum);
  assert(rv==0);
  assert(sum==10.0);
  rv = addAllMatrix(mat,1.0);
  assert(rv==0);
  rv = sumAllElemsMatrix(mat,&sum);
  assert(rv==0);
  assert(sum==20.0);

  printf("Testing: subAllMatrix\n");
  rv = subAllMatrix(NULL,1.0);
  assert(rv==-1);
  rv = sumAllElemsMatrix(mat,&sum);
  assert(rv==0);
  assert(sum==20.0);
  rv = subAllMatrix(mat,1.0);
  assert(rv==0);
  rv = sumAllElemsMatrix(mat,&sum);
  assert(rv==0);
  assert(sum==10.0);

  printf("Testing: mulAllMatrix\n");
  rv = mulAllMatrix(NULL,3.0);
  assert(rv==-1);
  rv = sumAllElemsMatrix(mat,&sum);
  assert(rv==0);
  assert(sum==10.0);
  rv = mulAllMatrix(mat,3.0);
  assert(rv==0);
  rv = sumAllElemsMatrix(mat,&sum);
  assert(rv==0);
  assert(sum==30.0);

  printf("Testing: divAllMatrix\n");
  rv = divAllMatrix(NULL,3.0);
  assert(rv==-1);
  rv = sumAllElemsMatrix(mat,&sum);
  assert(rv==0);
  assert(sum==30.0);
  rv = divAllMatrix(mat,3.0);
  assert(rv==0);
  rv = sumAllElemsMatrix(mat,&sum);
  assert(rv==0);
  assert(sum==10.0);
  deleteMatrix(&mat);

  printf("Testing: copyMatrix\n");
  mat = newMatrix(1,1);
	matrix * mat2 = NULL;
	rv = copyMatrix(1,1,0,1,mat,&mat2);
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

	return 0;
}

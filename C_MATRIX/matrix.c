/******************************************************************************/
/*                                                                            *
 *          Joshua Brown                                                      *
 *          Scientific Computing                                              *
 *          matrix.c function                                                 *
 *                                                                            *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "matrix.h"
#include "omp.h"
/******************************************************************************
 * Internal Library Functions                                                 *
 ******************************************************************************/
static inline void _hardcrash(void){
#ifdef _HARDCRASH_
  exit(1);
#endif
}

static inline float _add(const float val1, const float val2){
  return val1+val2;
}

static inline float _sub(const float val1, const float val2){
  return val1-val2;
}

static inline float _mul(const float val1, const float val2){
  return val1*val2;
}

static inline float _div(const float val1, const float val2){
  return val1/val2;
}

static inline float _val(const float val1, const float val2){
  return 0.0+val2;
}

static inline __attribute__((always_inline)) 
float _getE(const matrix * mat, const int r, const int c){
  return mat->data[(r)*mat->cols+c];
}

static inline __attribute__((always_inline)) 
void _setE(matrix * mat  ,
           const int r    ,
					 const int c    ,
	         const float val)
{
  mat->data[(r)*mat->cols+c] = val;
}

static inline void _addE(matrix * mat   ,
	                       const int r    ,
												 const int c    ,
												 const float val)
{
  _setE(mat,r,c,_getE(mat,r,c)+val);
}

static inline __attribute__((always_inline)) 
void _manipulate(matrix * mat             ,
	               float val                ,
							   float (*func)(float,float)){
  
  
  for(int r=0;r<mat->rows;r++){
    for(int c=0;c<mat->cols;c++){
      _setE(mat,r,c,(*func)(_getE(mat,r,c),val));
    }
  }

}

static inline float _operate(const int start_row        ,
                             const int end_row          ,
                             const int start_col        ,
                             const int end_col          ,
                             const matrix * mat         ,
                             float (*func) (float,float))
{
  float val=0.0;

  for(int r=start_row;r<=end_row;r++){
    for(int c=start_col;c<=end_col;c++){
      val = (*func)(_getE(mat,r,c),val);
    }
  }

  return val;
}



/******************************************************************************
 * User Library Functions                                                     *
 ******************************************************************************/
/* Creator                                                                    */
matrix * newMatrix(int r, int c){

#ifdef _ERROR_CHECKING_ON_
	if(r<1){
		fprintf(stderr,"ERROR r is less than 1 in newMatrix, a matrix must have "
                   "rows greater than 0\n");
    _hardcrash();
		return NULL;
	}
	if(c<1){
		fprintf(stderr,"ERROR c is less than 1 in newMatrix, a matrix must have "
                   "cols greater than 0\n");
    _hardcrash();
		return NULL;
	}
#endif
	matrix * mat = (matrix *) malloc(sizeof(struct _matrix)+sizeof(float)*r*c);
#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in newMatrix\n");
    _hardcrash();
		return NULL;
	}
#endif
	mat->rows=r;
	mat->cols=c;

	/* Initialize matrix so each of the elements
     * is 0 */
	for(int i=0;i<r;i++){
		for(int j=0;j<c;j++){
			_setE(mat,i,j,0);
		}
	}
	return mat;
}

/* Destructor                                                                 */
int deleteMatrix(matrix ** mat){
#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in deleteMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
	free(*mat);
	*mat = NULL;
	return 0;
}

/* Displayers                                                                 */
int printMatrix(const matrix * mat){
#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in printMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
  printf("\n*****************************************\n");
	printf("Cols %d Rows %d\n\n",mat->cols,mat->rows);

	for(int j=0;j<mat->cols;j++){
		printf("\t Col %6d\t",j);
	}
	printf("\n");

	for(int i=0;i<mat->rows;i++){
		printf("Row %d\t",i);
		for(int j=0;j<mat->cols;j++){
			printf("%8f\t",_getE(mat,i,j));
		}
		printf("\n");
	}
	printf("\n");

	return 0;
}

int printIntMatrix(const matrix * mat){
#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in printIntMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
	printf("\n*****************************************\n");
	printf("Cols %d Rows %d\n\n",mat->cols,mat->rows);

	for(int i=0;i<mat->rows;i++){
		for(int j=0;j<mat->cols;j++){
			printf("%3d ",(int) _getE(mat,i,j));
		}
		printf("\n");
	}

	return 0;
}

/* Getters                                                                    */
int getRowsMatrix(const matrix * mat){
#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in getRowsMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
	return mat->rows;
}

int getColsMatrix(const matrix * mat){
#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in getColsMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
	return mat->cols;
}

int getTotalElemsMatrix(const matrix * mat){
#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in getTotalElemsMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
	return mat->cols*mat->rows;
}


int * getRowPtrMatrix(matrix * mat){
#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in getRowPtrMatrix\n");
    _hardcrash();
    return NULL;
	}
#endif
  return &(mat->rows);
}

int * getColPtrMatrix(matrix * mat){
#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in getColPtrMatrix\n");
    _hardcrash();
    return NULL;
	}
#endif
  return &(mat->cols);
}

float * getDataPtrMatrix(matrix * mat){
#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in getDataPtrMatrix\n");
    _hardcrash();
    return NULL;
	}
#endif
  return &(mat->data[0]);
}

int sumAllElemsMatrix(const matrix * mat,float * sum){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in sumAllElemsMatrix\n");
    _hardcrash();
    return -1;
	}
	if(sum==NULL){
		fprintf(stderr,"ERROR sum is NULL in sumAllElemsMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
  *sum = 0.0;
  *sum = _operate(0,mat->rows-1,
                  0,mat->cols-1,
                  mat,
                  &_add);
	return 0;
}

int sumElemsMatrix(const int start_row,
                   const int end_row  ,
                   const int start_col,
                   const int end_col  ,
                   const matrix * mat ,
                   float * sum        ){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in sumElemsMatrix\n");
    _hardcrash();
    return -1;
	}
	if(sum==NULL){
		fprintf(stderr,"ERROR sum is NULL in sumElemsMatrix\n");
    _hardcrash();
    return -1;
	}
  if(start_row<0){
    fprintf(stderr,"ERROR start_row < 0 in sumElemsMatrix\n");
    _hardcrash();
    return -1;
  }
  if(start_row>end_row){
    fprintf(stderr,"ERROR start_row > end_row in sumElemsMatrix\n");
    _hardcrash();
    return -1;
  }
  if(end_row>=mat->rows){
    fprintf(stderr,"ERROR end_row >= mat->rows in sumElemsMatrix\n");
    _hardcrash();
    return -1;
  }
  if(start_col<0){
    fprintf(stderr,"ERROR start_col < 0 in sumElemsMatrix\n");
    _hardcrash();
    return -1;
  }
  if(start_col>end_col){
    fprintf(stderr,"ERROR start_col > end_col in sumElemsMatrix\n");
    _hardcrash();
    return -1;
  }
  if(end_col>=mat->cols){
    fprintf(stderr,"ERROR end_col is >= mat->cols in sumElemsMatrix\n");
    _hardcrash();
    return -1;
  }
#endif
  *sum = 0.0;
  *sum = _operate(start_row,end_row,
                  start_col,end_col,
                  mat,
                  &_add);
	return 0;
}

int getElemMatrix(const matrix * mat, const int r, const int c,float * val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in getElemMatrix\n");
    _hardcrash();
    return -1.0;
	}
	if(val==NULL){
		fprintf(stderr,"ERROR val is NULL in getElemMatrix\n");
    _hardcrash();
    return -1.0;
	}
	if(r<0){
		fprintf(stderr,"ERROR r is less than 0 in getElemMatrix\n");
    _hardcrash();
    return -1.0;
	}
	if(c<0){
		fprintf(stderr,"ERROR c is less than 0 in getElemMatrix\n");
    _hardcrash();
    return -1.0;
	}
	if(r>=mat->rows){
		fprintf(stderr,"ERROR r greater than rows in matrix getElemMatrix\n");
    _hardcrash();
    return -1.0;
	}
	if(c>=mat->cols){
		fprintf(stderr,"ERROR c greater than cols in matrix getElemMatrix\n");
    _hardcrash();
    return -1.0;
	}
#endif
	*val = _getE(mat,r,c);
	return 0;
}

/* Setters                                                                    */
int setElemMatrix(matrix * mat, const int r, const int c, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in setElemMatrix\n");
		_hardcrash();
		return -1;
	}
	if(r<0){
		fprintf(stderr,"ERROR row is less than 0 in setElemMatrix\n");
    _hardcrash();
		return -1;
	}
	if(c<0){
		fprintf(stderr,"ERROR col is less than 0 in setElemMatrix\n");
    _hardcrash();
    return -1;
	}
	if(r>=mat->rows){
		fprintf(stderr,"ERROR row greater than rows in matrix setElemMatrix\n");
    _hardcrash();
    return -1;
	}
	if(c>=mat->cols){
		fprintf(stderr,"ERROR col greater than cols in matrix setElemMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
	_setE(mat,r,c,val);

	return 0;
}

int setAllMatrix(matrix * mat, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in setAllMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
{
  _manipulate(mat,val,&_val);
}
	return 0;
}


int addAllMatrix(matrix * mat, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in addAllMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
{
  _manipulate(mat,val,&_add);

}
return 0;
}

int subAllMatrix(matrix * mat, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in subAllMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
{
  _manipulate(mat,val,&_sub);
}
	return 0;
}

int mulAllMatrix(matrix * mat, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in mulAllMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
{
  _manipulate(mat,val,&_mul);
}
	return 0;
}

int divAllMatrix(matrix * mat, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in divAllMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
{
  _manipulate(mat,val,&_div);
}
	return 0;
}

/* Manipulators                                                               */

/* start_row, end_row, start_col and end_col can be any
 * value between and including 0 and row-1, col-1 of the
 * smallest of the two matrices */
int copyMatrix(const int start_row_elem   ,
               const int end_row_elem     ,
               const int start_col_elem   ,
               const int end_col_elem     ,
               const matrix * mat_orig    ,
               matrix ** mat_copy    ){

	int col_length = end_col_elem-start_col_elem;
	int row_length = end_row_elem-start_row_elem;
#ifdef _ERROR_CHECKING_ON_
	if(mat_copy == NULL){
		fprintf(stderr,"ERROR mat_copy is NULL in copyMatrix\n");
    _hardcrash();
		return -1;
  }
	if(*mat_copy == NULL){
		fprintf(stderr,"ERROR *mat_copy is NULL in copyMatrix\n");
    _hardcrash();
		return -1;
  }
	if(mat_orig == NULL){
		fprintf(stderr,"ERROR mat_orig is NULL in copyMatrix\n");
    _hardcrash();
    return -1;
  }
	if(start_row_elem>=end_row_elem){
		fprintf(stderr,"ERROR start_row_elem is larger than end_row in "
                   "copyMatrix\n");
    _hardcrash();
		return -1;
	}
	if(start_col_elem>=end_col_elem){
		fprintf(stderr,"ERROR start_col_elem  larger than end_col in "
                   "copyMatrix\n");
     _hardcrash();
    return -1;
	}
	if(start_row_elem<0){
		fprintf(stderr,"ERROR start_row_elem  is less than 0 in "
                   "copyMatrix\n");
    _hardcrash();
    return -1;
	}
	if(start_col_elem<0){
		fprintf(stderr,"ERROR start_col_elem  is less than 0 in "
                   "copyMatrix\n");
    _hardcrash();
    return -1;
	}
	if(end_row_elem>mat_orig->rows){
		fprintf(stderr,"ERROR end_row_elem  extends past the row length of the "
                   "original matrix in copyMatrix\n");
    _hardcrash();
    return -1;
	}
	if(end_col_elem>mat_orig->cols){
		fprintf(stderr,"ERROR end_col_elem  is larger than the column length of the"
                   "original matrix in copyMatrix\n");
    _hardcrash();
    return -1;
	}
	if(row_length>(*mat_copy)->rows){
		fprintf(stderr,"ERROR rows to be copied extend past the row length of "
                   "mat_copy in copyMatrix\n");
    _hardcrash();
    return -1;
	}
	if(col_length>(*mat_copy)->cols){
		fprintf(stderr,"ERROR columns extend past the column length of mat_copy in "
                   "copyMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
	for(int i=start_row_elem;i<end_row_elem;i++){
		for(int j=start_col_elem;j<end_col_elem;j++){
			const float val = _getE(mat_orig,i+start_row_elem,j+start_col_elem);
			_setE((*mat_copy),i,j,val);
		}
	}

	return 0;
}

/* Function multiplies two matrices together to get a third matrix
 * then adds to what ever values were already stored in matrix_c:
 * c = c+a*b
 */
int multiplyAddMatrix(matrix * c, const matrix * a, const matrix * b){
#ifdef _ERROR_CHECKING_ON_
	if(a->cols!=b->rows){
		fprintf(stderr,"ERROR a matrix does not have the number of columns as b has"
                   " rows in multiplyAddMatrix\n");
    _hardcrash();
    return -1;
	}
	if(a->rows!=c->rows){
		fprintf(stderr,"ERROR c matrix does not have the number of rows as a in "
                   "multiplyAddMatrix\n");
    _hardcrash();
    return -1;
	}
	if(b->cols!=c->cols){
		fprintf(stderr,"ERROR c matrix does not have the number of cols as b in "
                   "multiplyAddMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
	for(int k=0;k<a->cols;k++){
		for(int i=0;i<a->rows;i++){
      float val = 0.0;
			for(int j=0;j<a->cols;j++){
				val+=_getE(a,i,j)*_getE(b,j,k);
			}
			_addE(c,i,k,val);
		}
	}

	return 0;
}

/* Function multiplies two matrices together to get a third matrix
 * Such that:
 * c = a*b
 */
int multiplyMatrix(matrix * c, const matrix * a, const matrix * b){

#ifdef _ERROR_CHECKING_ON_
	if(a->cols!=b->rows){
		fprintf(stderr,"ERROR a matrix does not have the number of columns as b has"
                   " rows in multiplyMatrix\n");
    _hardcrash();
    return -1;
	}
	if(a->rows!=c->rows){
		fprintf(stderr,"ERROR c matrix does not have the number of rows as a in "
                   "multiplyMatrix\n");
    _hardcrash();
    return -1;
	}
	if(b->cols!=c->cols){
		fprintf(stderr,"ERROR c matrix does not have the number of cols as b in "
                   "multiplyMatrix\n");
    _hardcrash();
    return -1;
	}
#endif

	for(int k=0;k<a->cols;k++){
		for(int i=0;i<a->rows;i++){
			float val = 0.0;
			for(int j=0;j<a->cols;j++){
				val+=_getE(a,i,j)*_getE(b,j,k);
			}
			_addE(c,i,k,val);
		}
	}

	return 0;
}

int generateFileMatrix(char * filename, const matrix * mat){

#ifdef _ERROR_CHECKING_ON_
  if(mat==NULL){
    fprintf(stderr,"ERROR mat is NULL in generateFileMatrix\n");
    _hardcrash();
    return -1;
  }
#endif
	FILE * fid;
	fid = fopen(filename,"w");

	for(int j=0;j<mat->cols;j++){
		for(int i=0;i<mat->rows;i++){
			fprintf(fid,"%6d ",(int)_getE(mat,i,j));
		}
		fprintf(fid,"\n");
	}
	fclose(fid);
	return 0;
}

#ifdef _OPENMP

// OpenMP version of manipulate
static inline __attribute__((always_inline)) 
void _manipulateOpenMP(matrix * mat             ,
	               float val                ,
							   float (*func)(float,float)){
  
  #pragma omp parallel for shared(mat)
  for(int i=0;i<omp_get_num_threads();i++){
    int rank = omp_get_thread_num();
    int proc = omp_get_num_threads();
    const float val2 = val;
    int rows = mat->rows/proc;
    int rem  = mat->rows%proc;
    int cols = mat->cols;
    int r_start;
    int r_finish;
    
    
if(rank<(proc-rem)){
      r_start = rank*rows;
      r_finish = r_start+rows;
    }else{
      r_start = (proc-rem)*rows+(rank-(proc-rem))*(rows+1);
      r_finish = r_start+(rows+1);
      rows++;
    }    
    for(int r=r_start;r<r_finish;r++){
      for(int c=0;c<cols;c++){
        _setE(mat,r,c,(*func)(_getE(mat,r,c),val2));
      }
    }
  }

}

// MP version of operate
static inline float _operateOpenMP(const int start_row        ,
                             const int end_row          ,
                             const int start_col        ,
                             const int end_col          ,
                             const matrix * mat         ,
                             float (*func) (float,float))
{

 
  float * ar = calloc(omp_get_max_threads(),sizeof(float));
  int proc = 0; 
  #pragma omp parallel shared(mat,ar,proc)
  {
    proc = omp_get_max_threads();
  #pragma omp for schedule(static) 
    for(int i=0;i<proc;i++){
      int rank = omp_get_thread_num();
      int rows = (end_row-start_row+1)/proc;
      int rem  = (end_row-start_row+1)%proc;
      int cols = (end_col-start_col+1);
      int r_start;
      int r_finish;
     
      float temp=0;
   
      if(rank<(proc-rem)){
        r_start = rank*rows+start_row;
        r_finish = r_start+rows+start_row;
      }else{
        r_start = (proc-rem)*rows+(rank-(proc-rem))*(rows+1)+start_row;
        r_finish = r_start+(rows+1)+start_row;
        rows++;
      }    

      int c_start = start_col;
      int c_finish = cols+c_start;
      int r;
      int c;
      for( r=r_start;r<r_finish;r++){
        for( c=c_start;c<c_finish;c++){
          temp = (*func)(_getE(mat,r,c),temp);
        }
      }
      ar[rank]=temp;
    }
  } 
  // Reduce the data using a custom Reduce
  float val = 0.0;
  for(int i=0;i<proc;i++){
    val = (*func)(ar[i],val);
    printf("val %f\n",val);
  }
  free(ar);
  return val;
}

int setAllMatrixOpenMP(matrix * mat, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in setAllMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
{
  _manipulateOpenMP(mat,val,&_val);
}
	return 0;
}

int sumAllElemsMatrixOpenMP(const matrix * mat,float * sum){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in sumAllElemsMatrix\n");
    _hardcrash();
    return -1;
	}
	if(sum==NULL){
		fprintf(stderr,"ERROR sum is NULL in sumAllElemsMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
  *sum = 0.0;
  *sum = _operateOpenMP(0,mat->rows-1,
                        0,mat->cols-1,
                        mat,
                        &_add);
	return 0;
}


int addAllMatrixOpenMP(matrix * mat, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in addAllMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
{
  _manipulateOpenMP(mat,val,&_add);

}
return 0;
}

int subAllMatrixOpenMP(matrix * mat, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in subAllMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
{
  _manipulateOpenMP(mat,val,&_sub);
}
	return 0;
}

int mulAllMatrixOpenMP(matrix * mat, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in mulAllMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
{
  _manipulateOpenMP(mat,val,&_mul);
}
	return 0;
}

int divAllMatrixOpenMP(matrix * mat, const float val){

#ifdef _ERROR_CHECKING_ON_
	if(mat==NULL){
		fprintf(stderr,"ERROR mat is NULL in divAllMatrix\n");
    _hardcrash();
    return -1;
	}
#endif
{
  _manipulateOpenMP(mat,val,&_div);
}
	return 0;
}

#endif

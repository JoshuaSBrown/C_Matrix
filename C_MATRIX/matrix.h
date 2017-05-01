/**************************************/
/*
 *          Joshua Brown
 *          Scientific Computing
 *          matrix.h function
 *
 */
/**************************************/

#include <stdbool.h>

#ifndef _MIDTERM_MATRIX_H_
#define _MIDTERM_MATRIX_H_

/* Here rows and cols describe the height and width of the matrix. The array  *
 * data contains the data values held within the matrix                       */
struct _matrix {
	int   rows;
	int   cols;
	float data[0];
};

typedef struct _matrix matrix;

/* Creator                                                                    */
/* Create a new matrix of intergers */
matrix * newMatrix(int rows, int cols);

/* Destructor                                                                 */
/* free memory used when the matrix was created */
int deleteMatrix(matrix ** mat);

/* Displayers                                                                 */
/* Print the contents of a matrix, the return value is given as:              *
 * -1 - if the matrix was NULL                                                *
 *  0 - if success                                                            */
int printMatrix(const matrix * mat);

/* Print the contents of a matrix in compressed form. Used to convert floating*
 * point numbers to an interger and then prints intergers with place holders  *
 * corresponding to two significant digits. The return value is given as:     *
 * -1 - if the matrix was NULL                                                *
 *  0 - if success                                                            */
int printIntMatrix(const matrix * mat);

/* Getters                                                                    */
/* Gets the total rows of the matrix the return value is given as:            *
 * >0 - greater than 0 where the returned values indicates the number of rows *
 * -1 - indicates the matrix was NULL                                         */
 int getRowsMatrix(const matrix * mat);

 /* Gets the total columns of the matrix, where the return values are:        *
  * >0 - greater than 0 for the number of columns                             *
	* -1 - indicates the matrix was NULL                                        */
int getColsMatrix(const matrix * mat);

/* Function sums all the elements in the matrix and returns the total, the    *
 * return values is given as:                                                 *
 *  0 - indicates success                                                     *
 * -1 - indicates the matrix was NULL or sum was NULL                         */
int sumAllElemsMatrix(const matrix * mat, float * sum);


/* Fuction sums up every element in the matrix mat defined between and        *
 * including the rows start_row - end_row and start_col - end_col. return     *
 * values are given by:                                                       *
 *  0 - indicates success                                                     *
 * -1 - indicates out of bounds or NULL matrix or sum pointer                 */
int sumElemsMatrix(const int start_row,
                   const int end_row  ,
                   const int start_col,
                   const int end_col  ,
                   const matrix * mat ,
                   float * sum        );

/* Determines the total number of elements in the matrix where the return     *
 * values is given as:                                                        *
 * >0 - greater than 0 indicates the total number of elements                 *
 * -1 - indicates the matrix was NULL                                         */
int getTotalElemsMatrix(const matrix * mat);

/* Grab an element at row r and column c and place it in the pointer val, the *
 * return value is given as:                                                  *
 * -1 - indicates r and c were out of bounds or that mat or val were NULL     *
 *  0 - success                                                               */
int getElemMatrix(const matrix * mat, const int r, const int c, float * val);

/* Setters                                                                    */
/* Function changes the elements at row r and column c to the value val, the  *
 * return value is given as:                                                  *
 * -1 - if r and c is out of bounds or if the matrix is NULL                  *
 *  0 - on success                                                            */
int setElemMatrix(matrix * mat, const int r, const int c, const float val);

/* Function sets every element in the matrix to the value given by val, the   *
 * return value is given as:                                                  *
 * -1 - indicates NULL matrix                                                 *
 *  0 - success                                                               */
int setAllMatrix(matrix * mat, const float val);

/* Function adds to every element in the matrix mat the value given by val,   *
 * the return value is given as:                                              *
 * -1 - indicates mat is NULL                                                 *
 *  0 - success                                                               */
int addAllMatrix(matrix * mat, const float val);

/* Function subtracts from every element the value contained in val, the      *
 * return value is given as:                                                  *
 * -1 - indicates the matrix mat was NULL                                     *
 *  0 - success                                                               */
int subAllMatrix(matrix * mat, const float val);

/* Function multiplies every element in the matrix mat with the value val, the*
 * return value is given as:                                                  *
 * -1 - indicates matrix mat is NULL                                          *
 *  0 - success                                                               */
int mulAllMatrix(matrix * mat, const float val);

/* Function divides every element in the matrix mat with the value val, the   *
 * return value is given as:                                                  *
 * -1 - indicates matrix mat is NULL                                          *
 *  0 - success                                                               */
int divAllMatrix(matrix * mat, const float val);

/* Manipulators                                                               */
/* Copies the elements between and including
 * start_row to end_row
 * start_col to end_col
 * to a separate matrix the values are placed in
 * the new matrix starting at row and col (0,0) */
int copyMatrix(const int start_row_elem ,
               const int end_row_elem   ,
               const int start_col_elem ,
               const int end_col_elem   ,
               const matrix * mat_orig  ,
               matrix ** mat_copy    );

/* matrix multiplication is executed such that the output is stored in c.     *
 * However, the elements in c are not overwritted but the elements are added  *
 * to such that you get:                                                      *
 * c = c+a*b                                                                  *
 * The return value is given as:                                              *
 * -1 - If matrices are of different sizes or are NULL                        *
 *  0 - If success                                                            */
int multiplyAddMatrix(matrix * c, const matrix * a, const matrix * b);

/* matrix multiplication is executed such that the output is stored in c. i.e.*
 * c = a*b                                                                    *
 * Wheret the return value is given as:                                       *
 * -1 - if the matrices are NULL or are of different sizes                    *
 *  0 - if success                                                            */
int multiplyMatrix(matrix *c, const matrix * a, const matrix * b);

/* Function generates a file with the contents of the matrix, the name of the *
 * file is specified through filename will return:                            *
 * -1 - if the matrix mat is NULL                                               *
 *  0 - success                                                               */
int generateFileMatrix(char * filename, const matrix * mat);

// OpenMP versions of the functions

int sumAllElemsMatrixOpenMP(const matrix * mat, float * sum);
int setAllMatrixOpenMP(matrix * mat, const float val);
int addAllMatrixOpenMP(matrix * mat, const float val);
int subAllMatrixOpenMP(matrix * mat, const float val);
int mulAllMatrixOpenMP(matrix * mat, const float val);
int divAllMatrixOpenMP(matrix * mat, const float val);

#endif

# /****************************************************************************/
# /*                                                                          *
#  *          Joshua Brown                                                    *
#  *          Scientific Computing                                            *
#  *          Makefile for test_matrix.c                                      *
#  *                                                                          *
#  *  To compile with additional error checking functionality pass the        *
#  *  following command line argument to make:                                *
#  *  make error_checking=1                                                   *
#  ****************************************************************************/

CC = gcc

CFLAGS = -Wall -Wextra -std=c99 -O2 -pedantic -g --save-temps -D _ERROR_CHECKING_ON_

ALL : test_matrix test_matrix_openmp

test_matrix : test_matrix.c matrix.o
	$(CC) $(CFLAGS) -o test_matrix test_matrix.c matrix.o -lm -fopenmp

test_matrix_openmp : test_matrix_openmp.c matrix.o
	$(CC) $(CFLAGS) -o test_matrix_openmp test_matrix_openmp.c \
matrix.o -lm -fopenmp

matrix.o : matrix.c
	$(CC) $(CFLAGS) -c matrix.c -fopenmp

.PHONY : clean
clean :
	$(RM) *.o *.i *.s test_matrix test_matrix_openmp

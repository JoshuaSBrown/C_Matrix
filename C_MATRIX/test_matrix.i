# 1 "test_matrix.c"
# 1 "/mnt/d/jbrown/Documents/Code/C_Code/C_Matrix/C_MATRIX//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "test_matrix.c"
# 26 "test_matrix.c"
# 1 "/usr/include/stdlib.h" 1 3 4
# 24 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 374 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 385 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 386 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 375 "/usr/include/features.h" 2 3 4
# 398 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 399 "/usr/include/features.h" 2 3 4
# 25 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4


# 95 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 139 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 206 "/usr/include/stdlib.h" 3 4


__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 372 "/usr/include/stdlib.h" 3 4


extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));

# 464 "/usr/include/stdlib.h" 3 4


extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));

# 513 "/usr/include/stdlib.h" 3 4


extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 530 "/usr/include/stdlib.h" 3 4

# 539 "/usr/include/stdlib.h" 3 4




extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));













extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;

# 712 "/usr/include/stdlib.h" 3 4





extern int system (const char *__command) ;

# 742 "/usr/include/stdlib.h" 3 4
typedef int (*__compar_fn_t) (const void *, const void *);
# 752 "/usr/include/stdlib.h" 3 4



extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 775 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;

# 860 "/usr/include/stdlib.h" 3 4



extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));

# 955 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 956 "/usr/include/stdlib.h" 2 3 4
# 968 "/usr/include/stdlib.h" 3 4

# 27 "test_matrix.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 29 "/usr/include/stdio.h" 3 4




# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 121 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 122 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 36 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 31 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "/usr/include/libio.h" 2 3 4
# 49 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 50 "/usr/include/libio.h" 2 3 4
# 144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 154 "/usr/include/libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 177 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 245 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 293 "/usr/include/libio.h" 3 4
  __off64_t _offset;
# 302 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 338 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 390 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 434 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 464 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "/usr/include/stdio.h" 2 3 4
# 108 "/usr/include/stdio.h" 3 4


typedef _G_fpos_t fpos_t;




# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));














extern FILE *tmpfile (void) ;
# 209 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;

# 232 "/usr/include/stdio.h" 3 4





extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 266 "/usr/include/stdio.h" 3 4






extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 295 "/usr/include/stdio.h" 3 4

# 329 "/usr/include/stdio.h" 3 4



extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

# 351 "/usr/include/stdio.h" 3 4





extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

# 420 "/usr/include/stdio.h" 3 4





extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 443 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 463 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 494 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 522 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 565 "/usr/include/stdio.h" 3 4








extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 617 "/usr/include/stdio.h" 3 4





extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 638 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));


# 684 "/usr/include/stdio.h" 3 4





extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 744 "/usr/include/stdio.h" 3 4





extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 792 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 815 "/usr/include/stdio.h" 3 4

# 824 "/usr/include/stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

# 841 "/usr/include/stdio.h" 3 4





extern void perror (const char *__s);






# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 854 "/usr/include/stdio.h" 2 3 4
# 943 "/usr/include/stdio.h" 3 4

# 28 "test_matrix.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 66 "/usr/include/assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 29 "test_matrix.c" 2

# 1 "matrix.h" 1
# 10 "matrix.h"
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdbool.h" 1 3 4
# 11 "matrix.h" 2






struct _matrix {
 int rows;
 int cols;
 float data[0];
};

typedef struct _matrix matrix;



matrix * newMatrix(int rows, int cols);



int deleteMatrix(matrix ** mat);





int printMatrix(const matrix * mat);






int printIntMatrix(const matrix * mat);





 int getRowsMatrix(const matrix * mat);




int getColsMatrix(const matrix * mat);





int sumAllElemsMatrix(const matrix * mat, float * sum);







int sumElemsMatrix(const int start_row,
                   const int end_row ,
                   const int start_col,
                   const int end_col ,
                   const matrix * mat ,
                   float * sum );





int getTotalElemsMatrix(const matrix * mat);





int getElemMatrix(const matrix * mat, const int r, const int c, float * val);






int setElemMatrix(matrix * mat, const int r, const int c, const float val);





int setAllMatrix(matrix * mat, const float val);





int addAllMatrix(matrix * mat, const float val);





int subAllMatrix(matrix * mat, const float val);





int mulAllMatrix(matrix * mat, const float val);





int divAllMatrix(matrix * mat, const float val);







int copyMatrix(const int start_row_elem ,
               const int end_row_elem ,
               const int start_col_elem ,
               const int end_col_elem ,
               const matrix * mat_orig ,
               matrix ** mat_copy );
# 145 "matrix.h"
int multiplyAddMatrix(matrix * c, const matrix * a, const matrix * b);






int multiplyMatrix(matrix *c, const matrix * a, const matrix * b);





int generateFileMatrix(char * filename, const matrix * mat);
# 31 "test_matrix.c" 2


int main(void){


 printf("Testing: newMatrix\n");
 matrix * mat = newMatrix(0,1);
 ((mat==((void *)0)) ? (void) (0) : __assert_fail ("mat==((void *)0)", "test_matrix.c", 38, __PRETTY_FUNCTION__));
 mat = newMatrix(1,0); ((mat==((void *)0)) ? (void) (0) : __assert_fail ("mat==((void *)0)", "test_matrix.c", 39, __PRETTY_FUNCTION__));
 mat = newMatrix(1,1);
 ((mat!=((void *)0)) ? (void) (0) : __assert_fail ("mat!=((void *)0)", "test_matrix.c", 41, __PRETTY_FUNCTION__));

  printf("Testing: deleteMatrix\n");
 int rv = deleteMatrix(((void *)0));
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 45, __PRETTY_FUNCTION__));
 rv = deleteMatrix(&mat);
 ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 47, __PRETTY_FUNCTION__));
  ((mat==((void *)0)) ? (void) (0) : __assert_fail ("mat==((void *)0)", "test_matrix.c", 48, __PRETTY_FUNCTION__));

 printf("Testing: printMatrix\n");
  mat = newMatrix(2,3);
  ((mat!=((void *)0)) ? (void) (0) : __assert_fail ("mat!=((void *)0)", "test_matrix.c", 52, __PRETTY_FUNCTION__));
 rv = printMatrix(((void *)0));
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 54, __PRETTY_FUNCTION__));
 rv = printMatrix(mat);
 ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 56, __PRETTY_FUNCTION__));

  printf("Testing: printIntMatrix\n");
  rv = printIntMatrix(((void *)0));
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 60, __PRETTY_FUNCTION__));
  rv = printIntMatrix(mat);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 62, __PRETTY_FUNCTION__));

 printf("Testing: getRowsMatrix\n");
 rv = getRowsMatrix(((void *)0));
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 66, __PRETTY_FUNCTION__));
 rv = getRowsMatrix(mat);
 ((rv==2) ? (void) (0) : __assert_fail ("rv==2", "test_matrix.c", 68, __PRETTY_FUNCTION__));

 printf("Testing: getColsMatrix\n");
 rv = getColsMatrix(((void *)0));
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 72, __PRETTY_FUNCTION__));
 rv = getColsMatrix(mat);
 ((rv==3) ? (void) (0) : __assert_fail ("rv==3", "test_matrix.c", 74, __PRETTY_FUNCTION__));

  printf("Testing: sumAllElemsMatrix\n");
  float sum = 1.0;
  rv = sumAllElemsMatrix(((void *)0),&sum);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 79, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,((void *)0));
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 81, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,&sum);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 83, __PRETTY_FUNCTION__));
  float temp = 0.0;
  printf("sum in test %f temp %f sum==temp %d\n",sum,temp,sum==temp);
  ((sum==temp) ? (void) (0) : __assert_fail ("sum==temp", "test_matrix.c", 86, __PRETTY_FUNCTION__));

  printf("Testing: getTotalElemsMatrix\n");
  rv = getTotalElemsMatrix(((void *)0));
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 90, __PRETTY_FUNCTION__));
  rv = getTotalElemsMatrix(mat);
  ((rv==(2*3)) ? (void) (0) : __assert_fail ("rv==(2*3)", "test_matrix.c", 92, __PRETTY_FUNCTION__));
  deleteMatrix(&mat);
  ((mat==((void *)0)) ? (void) (0) : __assert_fail ("mat==((void *)0)", "test_matrix.c", 94, __PRETTY_FUNCTION__));

  printf("Testing: getElemMatrix\n");
  mat = newMatrix(3,4);
  float val = 1.0;
  rv = getElemMatrix(((void *)0),0,0,&val);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 100, __PRETTY_FUNCTION__));
  ((val==1.0) ? (void) (0) : __assert_fail ("val==1.0", "test_matrix.c", 101, __PRETTY_FUNCTION__));
  rv = getElemMatrix(mat,0,0,((void *)0));
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 103, __PRETTY_FUNCTION__));
  rv = getElemMatrix(mat,-1,0,&val);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 105, __PRETTY_FUNCTION__));
  ((val==1.0) ? (void) (0) : __assert_fail ("val==1.0", "test_matrix.c", 106, __PRETTY_FUNCTION__));
  rv = getElemMatrix(mat,0,-1,&val);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 108, __PRETTY_FUNCTION__));
  ((val==1.0) ? (void) (0) : __assert_fail ("val==1.0", "test_matrix.c", 109, __PRETTY_FUNCTION__));
  rv = getElemMatrix(mat,3,0,&val);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 111, __PRETTY_FUNCTION__));
  ((val==1.0) ? (void) (0) : __assert_fail ("val==1.0", "test_matrix.c", 112, __PRETTY_FUNCTION__));
  rv = getElemMatrix(mat,0,4,&val);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 114, __PRETTY_FUNCTION__));
  ((val==1.0) ? (void) (0) : __assert_fail ("val==1.0", "test_matrix.c", 115, __PRETTY_FUNCTION__));
  rv = getElemMatrix(mat,0,0,&val);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 117, __PRETTY_FUNCTION__));
  ((val==0.0) ? (void) (0) : __assert_fail ("val==0.0", "test_matrix.c", 118, __PRETTY_FUNCTION__));
  deleteMatrix(&mat);
  ((mat==((void *)0)) ? (void) (0) : __assert_fail ("mat==((void *)0)", "test_matrix.c", 120, __PRETTY_FUNCTION__));

  printf("Testing: setElemMatrix\n");
  mat = newMatrix(3,4);
  rv = setElemMatrix(mat,-1,0,1.0);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 125, __PRETTY_FUNCTION__));
  rv = setElemMatrix(mat,0,-1,1.0);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 127, __PRETTY_FUNCTION__));
  rv = setElemMatrix(((void *)0),0,0,1.0);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 129, __PRETTY_FUNCTION__));
  rv = setElemMatrix(mat,3,0,1.0);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 131, __PRETTY_FUNCTION__));
  rv = setElemMatrix(mat,0,4,1.0);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 133, __PRETTY_FUNCTION__));
  rv = setElemMatrix(mat,0,0,1.0);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 135, __PRETTY_FUNCTION__));
  deleteMatrix(&mat);
  ((mat==((void *)0)) ? (void) (0) : __assert_fail ("mat==((void *)0)", "test_matrix.c", 137, __PRETTY_FUNCTION__));

  printf("Testing: setAllMatrix\n");
  mat = newMatrix(5,2);
  ((mat!=((void *)0)) ? (void) (0) : __assert_fail ("mat!=((void *)0)", "test_matrix.c", 141, __PRETTY_FUNCTION__));
  rv = setAllMatrix(((void *)0),1.0);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 143, __PRETTY_FUNCTION__));
  rv = setAllMatrix(mat,1.0);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 145, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,&sum);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 147, __PRETTY_FUNCTION__));
  ((sum==10.0) ? (void) (0) : __assert_fail ("sum==10.0", "test_matrix.c", 148, __PRETTY_FUNCTION__));

  printf("Testing: addAllMatrix\n");
  rv = addAllMatrix(((void *)0),1.0);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 152, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,&sum);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 154, __PRETTY_FUNCTION__));
  ((sum==10.0) ? (void) (0) : __assert_fail ("sum==10.0", "test_matrix.c", 155, __PRETTY_FUNCTION__));
  rv = addAllMatrix(mat,1.0);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 157, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,&sum);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 159, __PRETTY_FUNCTION__));
  ((sum==20.0) ? (void) (0) : __assert_fail ("sum==20.0", "test_matrix.c", 160, __PRETTY_FUNCTION__));

  printf("Testing: subAllMatrix\n");
  rv = subAllMatrix(((void *)0),1.0);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 164, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,&sum);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 166, __PRETTY_FUNCTION__));
  ((sum==20.0) ? (void) (0) : __assert_fail ("sum==20.0", "test_matrix.c", 167, __PRETTY_FUNCTION__));
  rv = subAllMatrix(mat,1.0);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 169, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,&sum);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 171, __PRETTY_FUNCTION__));
  ((sum==10.0) ? (void) (0) : __assert_fail ("sum==10.0", "test_matrix.c", 172, __PRETTY_FUNCTION__));

  printf("Testing: mulAllMatrix\n");
  rv = mulAllMatrix(((void *)0),3.0);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 176, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,&sum);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 178, __PRETTY_FUNCTION__));
  ((sum==10.0) ? (void) (0) : __assert_fail ("sum==10.0", "test_matrix.c", 179, __PRETTY_FUNCTION__));
  rv = mulAllMatrix(mat,3.0);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 181, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,&sum);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 183, __PRETTY_FUNCTION__));
  ((sum==30.0) ? (void) (0) : __assert_fail ("sum==30.0", "test_matrix.c", 184, __PRETTY_FUNCTION__));

  printf("Testing: divAllMatrix\n");
  rv = divAllMatrix(((void *)0),3.0);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 188, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,&sum);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 190, __PRETTY_FUNCTION__));
  ((sum==30.0) ? (void) (0) : __assert_fail ("sum==30.0", "test_matrix.c", 191, __PRETTY_FUNCTION__));
  rv = divAllMatrix(mat,3.0);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 193, __PRETTY_FUNCTION__));
  rv = sumAllElemsMatrix(mat,&sum);
  ((rv==0) ? (void) (0) : __assert_fail ("rv==0", "test_matrix.c", 195, __PRETTY_FUNCTION__));
  ((sum==10.0) ? (void) (0) : __assert_fail ("sum==10.0", "test_matrix.c", 196, __PRETTY_FUNCTION__));
  deleteMatrix(&mat);

  printf("Testing: copyMatrix\n");
  mat = newMatrix(1,1);
 matrix * mat2 = ((void *)0);
 rv = copyMatrix(1,1,0,1,mat,&mat2);
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 203, __PRETTY_FUNCTION__));
 rv = copyMatrix(0,1,1,1,mat,&mat2);
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 205, __PRETTY_FUNCTION__));
 rv = copyMatrix(-1,1,0,1,mat,&mat2);
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 207, __PRETTY_FUNCTION__));
 rv = copyMatrix(0,1,-1,1,mat,&mat2);
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 209, __PRETTY_FUNCTION__));
 rv = copyMatrix(0,2,0,1,mat,&mat2);
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 211, __PRETTY_FUNCTION__));
 rv = copyMatrix(0,1,0,2,mat,&mat2);
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 213, __PRETTY_FUNCTION__));
 rv = copyMatrix(0,1,0,1,((void *)0),&mat2);
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 215, __PRETTY_FUNCTION__));
 rv = copyMatrix(0,1,0,1,mat,((void *)0));
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 217, __PRETTY_FUNCTION__));
 rv = copyMatrix(0,1,0,1,mat,&mat2);
 ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 219, __PRETTY_FUNCTION__));
  mat2 = newMatrix(2,1);
  rv = copyMatrix(0,1,0,1,mat,&mat2);
  ((rv==-0) ? (void) (0) : __assert_fail ("rv==-0", "test_matrix.c", 222, __PRETTY_FUNCTION__));
  deleteMatrix(&mat2);
  deleteMatrix(&mat);
  mat = newMatrix(2,2);
  mat2 = newMatrix(1,1);
  rv = copyMatrix(0,2,0,2,mat,&mat2);
  ((rv==-1) ? (void) (0) : __assert_fail ("rv==-1", "test_matrix.c", 228, __PRETTY_FUNCTION__));
  deleteMatrix(&mat2);
  deleteMatrix(&mat);

 return 0;
}

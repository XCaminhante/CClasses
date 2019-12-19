#ifndef _OBJUTILS_H_
#define _OBJUTILS_H_

// Macros and definitions for immutable states and method-calling-based objects model support.

#define funcptr *const
#define dataptr const*const
#define iterptr const*
#define pointer void dataptr
#define string  char dataptr

#define interface   struct
#define object      const struct
#define class       const struct

#define objptr(CLASS)       struct CLASS dataptr
#define iterator(CLASS)     struct CLASS iterptr
#define me(CLASS)           objptr(CLASS) me
#define mutable(CLASS,OBJ)  *((iterator(CLASS)*) &OBJ)

#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#endif

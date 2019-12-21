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

#include <ctype.h>
#include <fcntl.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#endif

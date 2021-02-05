#ifndef _BASICOBJS_H_
#define _BASICOBJS_H_

#include "utils.h"

// Macros and definitions for immutable states and basic object model support.

#define funcptr *const
#define dataptr const*const
#define iterptr const*
#define pointer void dataptr
#define string  char dataptr
#define default {0}

#define interface   struct
#define object      const struct
#define class       const struct

#define objptr(CLASS)       struct CLASS dataptr
#define iterator(CLASS)     struct CLASS iterptr
#define me(CLASS)           objptr(CLASS) me
#define mutable(CLASS,OBJ)  *((CLASS const* *) &OBJ)

#define allocate(CLASS)     malloc(sizeof(CLASS))

#endif

//@+leo-ver=5-thin
//@+node:caminhante.20210207102516.1: * @file cclasses.h
#ifndef _CCLASSES_H_
#define _CCLASSES_H_
//@+others
//@+node:caminhante.20200306125753.1: ** Includes
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
//@+node:caminhante.20191029161928.49: ** Immutable states and basic static object vocabulary
#define funcptr   *const
#define dataptr   const*const
#define iterptr   const*
#define pointer   void dataptr
#define string    char dataptr
#define default   {0}
#define interface     struct
#define object        const struct
#define objptr(CLASS)         struct CLASS dataptr
#define iterator(CLASS)       struct CLASS iterptr
#define me(CLASS)             objptr(CLASS) me
#define mutable(CLASS,OBJ)    *((CLASS const* *) &OBJ)
#define allocate(CLASS)       malloc(sizeof(CLASS))
//@+node:caminhante.20191219184003.1: ** Dynamic objects model
typedef objptr($Message) msg_t;
typedef objptr($Class)   class_t;
typedef objptr($Type)    type_t;
typedef bool (funcptr $method) (class_t me, msg_t msg);
interface $Type {
  $method _handler;
};
interface $Class {
  object $Type _type;
  pointer _obj;
};
interface $Message {
  $method _subject;
  pointer _return;
};
//@+others
//@+node:caminhante.20200402212047.1: *3* Struct-defining macros
// Example:
//
// #define $test(_) \`
//   _(long,a,1)    \`
//   _(long,b,2)    \`
// define_struct3(test);
#define ref(NAME) \
  $##NAME
#define struct_items3(TYPE,NAME,VALUE) \
  TYPE NAME;
#define struct_items2(TYPE,NAME) \
  TYPE NAME;
#define init_values(TYPE,NAME,VALUE) \
  VALUE,
#define define_struct3(NAME) \
  struct NAME { \
    ref(NAME)(struct_items3) \
  } NAME = { ref(NAME)(init_values) }
#define define_struct2(NAME) \
  struct NAME { \
    ref(NAME)(struct_items2) }
//@+node:caminhante.20200402213256.1: *3* Type class macros
#define type_items(NAME) \
  $method NAME;
#define type(NAME) \
  Type$##NAME
#define method_ref(TYPE,NAME) \
  TYPE##$##NAME
#define method_id(TYPE,METHOD) \
  ($method)&(type(TYPE).METHOD)
#define type_id(TYPE) \
  ($method)&(type(TYPE)._handler)
#define define_type(NAME) \
  object { \
    $method _handler; \
    type(NAME)(type_items) \
  } type(NAME) = default
//@+node:caminhante.20200402212137.1: *3* Message macros
#define message(TYPE,METHOD) \
  Message$##TYPE##$##METHOD
#define new_message(TYPE,METHOD,ARGS...) \
  (msg_t)&(object message(TYPE,METHOD)) { \
    ._subject=method_id(TYPE,METHOD), \
    ## ARGS }
#define define_message(TYPE,METHOD) \
  interface message(TYPE,METHOD) { \
    $method _subject; \
    pointer _return; \
    method_ref(TYPE,METHOD)(struct_items2) }
#define define_property(TYPE,METHOD) \
  interface message(TYPE,METHOD) { \
    $method _subject; \
    pointer _return; }
#define my_handler(OBJ) \
  (OBJ._type._handler)
#define send(OBJ,MSG) \
  my_handler(OBJ)(&OBJ, MSG)
//@+node:caminhante.20200402212018.1: *3* Metaclass macros
#define handler(NAME) \
  Handler_##NAME
#define define_class(CLASS) \
  bool handler(CLASS) (class_t me, msg_t msg)
#define declare_class(CLASS) \
  define_class(CLASS)
#define is_method(TYPE,METHOD) \
  (msg->_subject == method_id(TYPE,METHOD))
#define querying_type(TYPE) \
  (msg->_subject == type_id(TYPE))
#define message_of(TYPE,METHOD) \
  ((objptr(message(TYPE,METHOD)))msg)
#define new(CLASS) \
  { {handler(CLASS)}, 0 }
#define query_the_type(TYPE) \
  (object $Message){type_id(TYPE),0}
#define implements(CLASS,TYPE) \
  handler(CLASS)(0,&query_the_type(TYPE))
//@-others
//@-others
#endif
//@-leo

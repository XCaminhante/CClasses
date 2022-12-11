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
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <search.h>
#include <uchar.h>
//@+node:caminhante.20191029161928.49: ** Data types and immutable states
#define funcptr   *const
#define dataptr   const*const
#define iterptr   const*
#define pointer   void dataptr
#define default   {0}
#define definition      struct
#define implementation  const struct
#define object          const struct
#define mut   *
#define objptr(CLASS)         struct CLASS dataptr
#define iterator(CLASS)       struct CLASS iterptr
#define mutable(TYPE,OBJ)     (*(TYPE**) &OBJ)
#define mutableptr(TYPEP,OBJ) ((TYPEP*) &(OBJ))
#define allocate(NUM,TYPE)    (TYPE*)calloc(NUM,sizeof(TYPE))
#define free(POINTER)         free((void*) POINTER)
#define reallocate(PTR,NUM,TYPE)    (TYPE*)realloc(PTR,NUM*sizeof(TYPE))
//@+node:caminhante.20191219184003.1: ** Dynamic objects model
typedef objptr($Message) msg_t;
typedef objptr($Class)   class_t;
typedef objptr($Type)    type_t;
typedef bool (funcptr $method) (class_t me, msg_t msg);
typedef bool (mut $class) (class_t me, msg_t msg);
definition $Type {
  $class _handler;
};
definition $Class {
  object $Type _type;
  pointer _obj;
};
definition $Message {
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
#define struct_init_values(TYPE,NAME,VALUE) \
  VALUE,
#define define_struct3(NAME) \
  struct NAME { \
    ref(NAME)(struct_items3) \
  } NAME = { ref(NAME)(struct_init_values) }
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
  (object message(TYPE,METHOD)) { \
    ._subject=method_id(TYPE,METHOD), \
    ## ARGS }
#define msgptr(TYPE,METHOD) \
  objptr(message(TYPE,METHOD))
#define define_message(TYPE,METHOD) \
  struct message(TYPE,METHOD) { \
    $method _subject; \
    pointer _return; \
    method_ref(TYPE,METHOD)(struct_items2) }
#define define_property(TYPE,METHOD) \
  struct message(TYPE,METHOD) { \
    $method _subject; \
    pointer _return; }
#define my_handler(OBJ) \
  (OBJ._type._handler)
#define send(OBJ,MSG) \
  my_handler(OBJ)(&OBJ, MSG)
#define send_msg(OBJ,TYPE,METHOD,ARGS...) \
  send(OBJ,(msg_t)&new_message(TYPE,METHOD, ## ARGS))
#define send_msg_ret(OBJ,TYPE,METHOD,VAR,ARGS...) \
  send(OBJ,(msg_t)&new_message(TYPE,METHOD,._return=&VAR, ## ARGS))
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
#define cast_msg(TYPE,METHOD) \
  ((msgptr(TYPE,METHOD))msg)
#define cast_obj(CLASS) \
  ((objptr(CLASS))me->_obj)
#define mutate_obj(VALUE) \
  *mutableptr(typeof(VALUE),me->_obj) = VALUE;
#define mutobjptr(CLASS) \
  mutable(struct CLASS, me->_obj)
#define cast_ret(TYPEP) \
  ((TYPEP iterptr)msg->_return)
#define mutretptr(TYPEP) \
  ((TYPEP*)msg->_return)
#define mutclassptr(CLASS) \
  mutableptr($class, me->_type._handler)
#define empty_object(CLASS) \
  { {handler(CLASS)}, 0 }
#define type_query_msg(TYPE) \
  (object $Message){type_id(TYPE),0}
#define implements(CLASS,TYPE) \
  handler(CLASS)(0,&type_query_msg(TYPE))
#define send_type_query(OBJ,TYPE) \
  send(OBJ,&type_query_msg(TYPE))
//@-others
//@-others
#endif
//@-leo

#ifndef _DYNAMOBJS_H_
#define _DYNAMOBJS_H_

#include "basic_objects.h"

// Macros and definitions for a intensional type-safe message-passing-based object system.

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

// Macros for simplified struct defining
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
    ref(NAME)(struct_items2) \
  }

// Type classes macros

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
  class { \
    $method _handler; \
    type(NAME)(type_items) \
  } type(NAME) = default

// Message macros

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

#define my_handler(OBJ) \
  (OBJ._type._handler)

#define send(OBJ,MSG) \
  my_handler(OBJ)(&OBJ, MSG)

// Metaclass macros

#define handler(NAME) \
  Handler_##NAME

#define define_handler(CLASS) \
  bool handler(CLASS) (class_t me, msg_t msg)

#define is_method(TYPE,METHOD) \
  (msg->_subject == method_id(TYPE,METHOD))

#define querying_type(TYPE) \
  (msg->_subject == type_id(TYPE))

#define message_of(TYPE,METHOD) \
  ((objptr(message(TYPE,METHOD)))msg)

#define new(CLASS) \
  { {handler(CLASS)}, 0 }

#define implements(CLASS,TYPE) \
  handler(CLASS)(0,&(object $Message){type_id(TYPE),0})
#endif

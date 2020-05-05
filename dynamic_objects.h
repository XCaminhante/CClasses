#ifndef _DYNAMOBJS_H_
#define _DYNAMOBJS_H_

#include "basic_objects.h"

// Macros and definitions for a intensional type-safe message-passing-based object system.

// 
// Type interface classes delimit delimit the vocabulary of messages of a type.

typedef objptr($Message) msg_t;
typedef objptr($Class)   class_t;
typedef objptr($Type)    type_t;

typedef bool (funcptr $method) (class_t me, msg_t msg);

interface $Type {
  $method _handler;
};

interface $Class {
  object $Type _type;
};

interface $Message {
  $method _subject;
  pointer _return;
};

\*
Macros for simplified struct defining
You need to define a macro which will receive another macro as argument, passing its fields.
Example:

  #define $test(_) \
    _(long,a,1) \
    _(long,b,2) \
  define_struct3(test)
*\

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
// Type classes 
#define type_items(NAME) \
  $method NAME;

#define type(NAME) \
  $Type$##NAME

#define method_ref(TYPE,NAME) \
  $##TYPE##$##NAME

#define method_id(TYPE,METHOD) \
  type(TYPE).METHOD

#define define_type(NAME) \
  class { \
    $method _handler; \
    ref(NAME)(type_items) \
  } type(NAME) = {0}
#define message(TYPE,METHOD) \
  $Message$##TYPE##$##METHOD

#define new_message(TYPE,METHOD,ARGS...) \
  (object message(TYPE,METHOD)) { \
    ._subject=&(method_id(TYPE,METHOD)), \
    ## ARGS }

#define define_message(TYPE,METHOD) \
  interface message(TYPE,METHOD) { \
    $method _subject; \
    pointer _return; \
    method_ref(TYPE,METHOD)(struct_items2) }

#define my_handler(OBJ) \
  (OBJ->_type._handler)

#define send(OBJ,MSG) \
  my_handler(OBJ)(OBJ, MSG)
#define handler(NAME) \
  Handler_##NAME

#define define_handler(CLASS) \
  bool handler(CLASS) (class_t me, msg_t msg)

#define declare_handler(CLASS) \
  define_handler(CLASS)

#define is_method(TYPE,METHOD) \
  (msg->_subject == method_id(TYPE,METHOD))

#define my_message(TYPE,METHOD) \
  ((objptr(message(TYPE,METHOD)))msg)

#define my_object(CLASS) \
  ((objptr(class_private_face(CLASS)))me)
#define class_public_face(NAME) \
  $Class$##NAME

#define class_private_face(NAME) \
  $Private$##NAME

#define class_handler(CLASS) \
  class_public_face(CLASS))._type

#define declare_class(CLASS) \
  declare_handler(CLASS); \
  class class_public_face(CLASS) { \
    object $Type _type; \
  } class_public_face(CLASS) = { {handler(CLASS)} }

#define allocate_object(CLASS) \
  allocate(object class_private_face(CLASS))

#define define_class(CLASS) \
  interface class_private_face(CLASS) { \
    object $Type _type; \
    ref(CLASS)(struct_items2) \
  }

#define construct_object(OBJ,CLASS,FIELDS...) \
  memcpy((void*)OBJ, \
    &(object class_private_face(CLASS)) { \
      ._type=class_handler(CLASS), \
      ## FIELDS }, \
    sizeof(object class_private_face(CLASS)))

#endif

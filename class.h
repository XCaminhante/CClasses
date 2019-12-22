#include "utils.h"

// Macros and definitions for message-passing-based objects

typedef object $Message msg_t;
typedef object $Class class_t;
typedef object $Type type_t;

typedef bool (funcptr $method) (me($Class), objptr($Message) msg);

interface $Type {
  $method _handler;
};

interface $Class {
  object $Type _type;
};

interface $Message {
  objptr($Class) _return;
  $method funcptr _subject;
};

#define is_subject(MSG,MSG_TYPE) ((MSG)->_subject == &(MSG_TYPE))
#define handler_of(OBJ) ((OBJ)->_type._handler)
#define send(OBJ,MSG) handler_of(OBJ)((objptr($Class))OBJ,(objptr($Message))MSG)

#define new(CLASS) CLASS##$Class
#define type(CLASS) CLASS##$Type
#define handler(CLASS) CLASS##$Handler
#define message(CLASS,METHOD) CLASS##$Message$##METHOD
#define method(CLASS,METHOD) type(CLASS).METHOD
#define new_message(CLASS,METHOD,...) { ._subject=&(method(CLASS,METHOD)), __VA_ARGS__ } 

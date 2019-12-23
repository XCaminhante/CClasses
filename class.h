#include "utils.h"

// Macros and definitions for message-passing-based objects

typedef object $Message msg_t;
typedef object $Class class_t;
typedef object $Type type_t;

typedef bool (funcptr $method) \
  (objptr($Class) iterptr me, objptr($Message) msg);

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

#define is_subject(MSG,METHOD) \
  ((MSG)->_subject == &(METHOD))
#define def_handler(NAME) \
  bool NAME (objptr($Class) iterptr me, objptr($Message) msg)
#define handler(OBJ) \
  ((* OBJ)->_type._handler)
#define send(OBJ,MSG) \
  handler(OBJ)((objptr($Class) iterptr)OBJ,(objptr($Message))MSG)

#define new_message(METHOD,...) \
  { (object $Message) {._subject=&(METHOD)}, __VA_ARGS__ }

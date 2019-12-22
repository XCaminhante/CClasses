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

#define is_subject(MSG,METHOD) ((MSG)->_subject == &(METHOD))
#define handler(OBJ) ((OBJ)->_type._handler)
#define send(OBJ,MSG) handler(OBJ)((objptr($Class))OBJ,(objptr($Message))MSG)

#define new_message(METHOD,...) { ._subject=&(METHOD), __VA_ARGS__ }

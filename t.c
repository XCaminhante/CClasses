#include "class.h"

// An anonymous struct instantiated because this struct isn't meant to be
// instantiated again

interface {
  $method _handler;
  $method new;
  $method destroy;
  $method size;
  $method nth;
} Stack$Type;

/* bool Stack$Handler (me($Class), objptr($Message) msg); */
def_handler(Stack$Handler);

class Stack$Class {
  object $Type _type;
  pointer value;
  objptr(Stack$Class) next;
} Stack$New = {{Stack$Handler}};

interface Stack$Message$new {
  object $Message _m;
  pointer value;
  objptr(Stack$Class) next;
};

interface Stack$Message$nth {
  object $Message _m;
  size_t index;
};

bool Stack$Handler (objptr($Class) iterptr me, objptr($Message) msg) {
  if (is_subject(msg,Stack$Type.new)) {
    if ((char*)*me != (char*)&Stack$New) { puts("Invalid"); return false; }
    return true;
  } else { puts("Stack$Handler: Undefined method error"); }
  mutable(objptr($Class),msg->_return) = NULL;
  return false;
}

int main () {
  objptr(Stack$Class) st = &Stack$New;
  /* object Stack$Class st = Stack$New; */
  object Stack$Message$new m = new_message(Stack$Type.new,(void*)0xdead03,NULL);
  printf("%p\n",st->value);
  send(&st,&m);
  printf("%p\n",st->value);
  return 0;
}

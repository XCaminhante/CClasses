#include "class.h"

interface {
  $method _handler;
  $method new;
  $method destroy;
  $method size;
  $method nth;
} Stack$Type;

bool Stack$Handler (me($Class), objptr($Message) msg) {
  if (is_subject(msg,Stack$Type.new)) {}
  else if (is_subject(msg,Stack$Type.destroy))
  else if (is_subject(msg,Stack$Type.size))
  else if (is_subject(msg,Stack$Type.nth))
  else puts("Stack$Handler: Undefined method error");
  mutable($Class,msg->_return) = NULL;
  return true;
}

class Stack$Class {
  object $Type _type;
  pointer value;
  objptr(Stack$Class) next;
} Stack$Class = { {Stack$Handler}, NULL, NULL };

int main () {
  object Stack$Class st = new(Stack);
  object $Message m = new_message(Stack,new);
  send(&st,&m);
  return 0;
}

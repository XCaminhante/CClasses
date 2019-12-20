#include "class.h"

interface Stack$Type {
  $method _handler;
  $method new;
  $method destroy;
  $method size;
  $method nth;
} Stack$Type = {0};

bool Stack$Handler (me($Class), objptr($Message) msg) {
  if (is_subject(msg,Stack$Type.new))           puts("New");
  else if (is_subject(msg,Stack$Type.destroy))  puts("Destroy");
  else if (is_subject(msg,Stack$Type.size))     puts("Size");
  else if (is_subject(msg,Stack$Type.nth))      puts("Nth");
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
  object Stack$Class st = Stack$Class;
  object $Message m = { ._subject = &Stack$Type.new };
  send(&st,&m);
  return 0;
}

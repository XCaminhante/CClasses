#ifndef _STACK_CLASS_
#define _STACK_CLASS_

#include "utils.h"

interface $Stack {
  object Stack  (funcptr new)     (pointer data, objptr(Stack) next);
  // [ valid Stack object -> deallocates its `->value` entry | <Identity> ]
  void          (funcptr destroy) (me(Stack));
  // [ valid Stack chain -> number of elements in the chain | 0 ]
  size_t        (funcptr size)    (me(Stack));
  // [ valid Stack chain -> nth object at the chain | 0 ]
  objptr(Stack) (funcptr nth)     (me(Stack), size_t index);
};

struct Stack {
  pointer value;
  objptr(Stack) next;
};

extern class $Stack Stack;

#endif

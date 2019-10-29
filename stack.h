#ifndef _STACK_CLASS_
#define _STACK_CLASS_

#include "utils.h"

interface $Stack {
  object Stack  (funcptr new)     (pointer data, objptr(Stack) next);
  void          (funcptr destroy) (me(Stack));
  size_t        (funcptr size)    (me(Stack));
  objptr(Stack) (funcptr nth)     (me(Stack), size_t index);
};

struct Stack {
  pointer value;
  objptr(Stack) next;
};

extern class $Stack Stack;

#endif

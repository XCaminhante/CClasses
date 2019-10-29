#include "stack.h"

static object Stack Stack_new (pointer value, objptr(Stack) next) {
  return (object Stack){value, next};
}
static void Stack_destroy (me(Stack)) {
  if (me == 0) return;
  if (me->value) free((void*)me->value);
}
static size_t Stack_size (me(Stack)) {
  if (me == 0) return 0;
  iterator(Stack) p = me;
  size_t count = 1;
  while (p->next) {
    count++; p = p->next; }
  return count;
}
static objptr(Stack) Stack_nth (me(Stack), size_t index) {
  if (index < 1) return 0;
  iterator(Stack) p = me;
  while (p && --index) {
    p = p->next; }
  return p;
}
class $Stack Stack = {
  Stack_new,
  Stack_destroy,
  Stack_size,
  Stack_nth
};

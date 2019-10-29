#ifndef _LISTMAP_CLASS_
#define _LISTMAP_CLASS_

#include "utils.h"

interface $ListMap {
  object ListMap  (funcptr new) (string key, pointer value, objptr(ListMap) next);
  void            (funcptr destroy) (me(ListMap));
  size_t          (funcptr size) (me(ListMap));
  objptr(ListMap) (funcptr nth) (me(ListMap), size_t index);
  objptr(ListMap) (funcptr lookup) (me(ListMap), string key);
  objptr(ListMap) (funcptr has) (me(ListMap), pointer value);
  bool            (funcptr append) (me(ListMap), objptr(ListMap) target);
  objptr(ListMap) (funcptr unset) (iterator(ListMap) *me, string key);
  bool            (funcptr unite) (me(ListMap), objptr(ListMap) target);
};

struct ListMap {
  string key;
  pointer value;
  objptr(ListMap) next;
};

extern class $ListMap ListMap;

#endif

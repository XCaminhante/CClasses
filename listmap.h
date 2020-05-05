#ifndef _LISTMAP_CLASS_
#define _LISTMAP_CLASS_

#include "basic_objects.h"

interface $ListMap {
  // WARN This function does not prevent the creation of cyclical lists!
  object ListMap  (funcptr new) (string key, pointer value, objptr(ListMap) next);
  // [ likely valid ListMap object -> deallocates its `->key` and `->value` entries | <Identity> ]
  void            (funcptr destroy) (me(ListMap));
  // [ likely valid ListMap chain -> number of elements in the chain | 0 ]
  size_t          (funcptr size) (me(ListMap));
  // [ likely valid ListMap chain -> nth object at the chain | 0 ]
  objptr(ListMap) (funcptr nth) (me(ListMap), size_t index);
  // [ likely valid ListMap chain and an ListMap entry has this key
  // (a key different from a empty string) ->
    // this ListMap entry | 0 ]
  objptr(ListMap) (funcptr lookup) (me(ListMap), string key);
  // [ likely valid ListMap chain and an ListMap entry has this value
  // (a value different from 0) ->
    // this ListMap entry | 0 ]
  objptr(ListMap) (funcptr has) (me(ListMap), pointer value);
  // [ likely valid ListMap objects `me` and `target` -> `target->next` points to `me` | 0 ]
  // WARN This function does not prevent the creation of cyclical lists!
  bool            (funcptr append) (me(ListMap), objptr(ListMap) target);
  // [ likely valid ListMap chain and an ListMap entry has this key
  // (a key different from a empty string) ->
    // this ListMap entry removed from the chain, returns this ListMap entry | 0 ]
  objptr(ListMap) (funcptr unset) (iterator(ListMap) *me, string key);
  // [ likely valid ListMap chains `me` and `target` -> `target`'s tail `->next` points to `me` | 0 ]
  // WARN This function does not prevent the creation of cyclical lists!
  bool            (funcptr unite) (me(ListMap), objptr(ListMap) target);
};

struct ListMap {
  string key;
  pointer value;
  objptr(ListMap) next;
};

extern class $ListMap ListMap;

#endif

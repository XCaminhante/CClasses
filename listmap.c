#include "listmap.h"

static bool same_key (objptr(ListMap) listmap, string key) {
  return strcmp(listmap->key,key) == 0;
}
// WARN This function does not prevent the creation of cyclical lists!
static object ListMap ListMap_new (string key, pointer value, objptr(ListMap) next) {
  return (object ListMap){ .key=key, .value=value, .next=next };
}
static void ListMap_destroy (me(ListMap)) {
  if (me == 0) return;
  if (me->key) free((char*)me->key);
  if (me->value) free((void*)me->value);
}
static size_t ListMap_size (me(ListMap)) {
  if (me == 0) return 0;
  iterator(ListMap) p = me;
  size_t count = 1;
  while (p->next) {
    count++; p = p->next; }
  return count;
}
// Nth element at list, or 0 if non-existent
static objptr(ListMap) ListMap_nth (me(ListMap), size_t index) {
  if (index < 1) return 0;
  iterator(ListMap) p = me;
  while (p && --index) {
    p = p->next; }
  return p;
}
// Finds a element by its key
static objptr(ListMap) ListMap_lookup (me(ListMap), string key) {
  if (me == 0) return 0;
  if (key == 0) return 0;
  iterator(ListMap) p = me;
  while (p->next) {
    if (same_key(p, key)) return p;
    p = p->next; }
  return 0;
}
// Finds a element by its value
static objptr(ListMap) ListMap_has (me(ListMap), pointer value) {
  if (me == 0) return 0;
  if (value == 0) return 0;
  iterator(ListMap) p = me;
  while (p->next) {
    if (p->value == value) return p;
    p = p->next; }
  return 0;
}
// `target` becomes the new ListMap head
// WARN This function does not prevent the creation of cyclical lists!
static bool ListMap_append (me(ListMap), objptr(ListMap) target) {
  if (me == 0) return false;
  if (target == 0) return false;
  if (me == target) return false;
  if (target->next != 0) return false;
  *( (iterator(ListMap)*) &target->next) = me;
  return true;
}
// [ head -> p2 := head with .next=0, returns p2 ]
static objptr(ListMap) chopp_next (objptr(ListMap) head) {
  iterator(ListMap) p = head->next;
  *( (iterator(ListMap)*) &head->next) = 0;
  return p;
}
// [ head -> p2 -> p3 := head -> p3, returns p2 with .next=0 ]
static objptr(ListMap) nip_second (objptr(ListMap) head) {
  iterator(ListMap) p2 = head->next;
  *( (iterator(ListMap)*) &head->next) = chopp_next(p2);
  return p2;
}
// For a ListMap list with `key` present:
  // removes the corresponding element, rewiring the list
  // returns the removed element
// Otherwise, returns 0
static objptr(ListMap) ListMap_unset (iterator(ListMap) *me, string key) {
  iterator(ListMap) p = *me; iterator(ListMap) lp = 0;
  while (p) {
    if (same_key(p,key)) {
      // last element case:
      if (p->next == 0) return chopp_next(lp);
      // common case:
      if (lp) return nip_second(lp);
      // first element case:
      *me = chopp_next(p); return p; }
    lp = p; p = p->next; }
  return p;
}
// Concatenates `target` and `me`, `target` becomes the new head
// WARN This function does not prevent the creation of cyclical lists!
static bool ListMap_unite (me(ListMap), objptr(ListMap) target) {
  if (me == 0) return false;
  if (target == 0) return false;
  iterator(ListMap) p = target;
  while (p->next) p = p->next;
  return ListMap_append(me,p);
}

class $ListMap ListMap = {
  ListMap_new,
  ListMap_destroy,
  ListMap_size,
  ListMap_nth,
  ListMap_lookup,
  ListMap_has,
  ListMap_append,
  ListMap_unset,
  ListMap_unite
};

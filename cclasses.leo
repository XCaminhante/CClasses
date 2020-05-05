<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="knoppix.20191219151205.1"><vh>@settings</vh>
<v t="knoppix.20191219151205.2"><vh>@data abbreviations</vh></v>
<v t="knoppix.20191219151205.3"><vh>nodeActions</vh>
<v t="knoppix.20191219151205.4"><vh>@run*</vh></v>
<v t="knoppix.20191220134024.1"><vh>@files *.[hc]</vh></v>
</v>
</v>
<v t="knoppix.20191029161928.1"><vh>Classes C</vh>
<v t="knoppix.20191029161928.2"><vh>/Arquivos</vh>
<v t="knoppix.20191220162548.1"><vh>@auto t.s</vh></v>
<v t="knoppix.20191219150641.1"><vh>@auto-md about.md</vh></v>
<v t="knoppix.20191029161928.11"><vh>@clean listmap.c</vh>
<v t="knoppix.20191029161928.62"><vh>ListMap implementation</vh>
<v t="knoppix.20191029161928.63"><vh>bool            same_key (objptr(ListMap) listmap, string key)</vh></v>
<v t="knoppix.20191029161928.64"><vh>object ListMap  new (string key, pointer value, objptr(ListMap) next)</vh></v>
<v t="knoppix.20191029161928.65"><vh>void            destroy (me(ListMap))</vh></v>
<v t="knoppix.20191029161928.66"><vh>size_t          size (me(ListMap))</vh></v>
<v t="knoppix.20191029161928.67"><vh>objptr(ListMap) nth (me(ListMap), size_t index)</vh></v>
<v t="knoppix.20191029161928.68"><vh>objptr(ListMap) lookup (me(ListMap), string key)</vh></v>
<v t="knoppix.20191029161928.69"><vh>objptr(ListMap) has (me(ListMap), pointer value)</vh></v>
<v t="knoppix.20191029161928.70"><vh>bool            append (me(ListMap), objptr(ListMap) target)</vh></v>
<v t="knoppix.20191029161928.71"><vh>objptr(ListMap) chopp_next (objptr(ListMap) head)</vh></v>
<v t="knoppix.20191029161928.72"><vh>objptr(ListMap) nip_second (objptr(ListMap) head)</vh></v>
<v t="knoppix.20191029161928.73"><vh>objptr(ListMap) unset (iterator(ListMap) *me, string key)</vh></v>
<v t="knoppix.20191029161928.74"><vh>bool            unite (me(ListMap), objptr(ListMap) target)</vh></v>
</v>
</v>
<v t="knoppix.20191029161928.25"><vh>@clean listmap.h</vh>
<v t="knoppix.20191029161928.61"><vh>ListMap interface</vh></v>
</v>
<v t="knoppix.20191029161928.27"><vh>@clean stack.c</vh>
<v t="knoppix.20191029161928.78"><vh>Stack implementation</vh>
<v t="knoppix.20191029161928.79"><vh>object Stack  new (pointer value, objptr(Stack) next)</vh></v>
<v t="knoppix.20191029161928.80"><vh>void          destroy (me(Stack))</vh></v>
<v t="knoppix.20191029161928.81"><vh>size_t        size (me(Stack))</vh></v>
<v t="knoppix.20191029161928.82"><vh>objptr(Stack) nth (me(Stack), size_t index)</vh></v>
</v>
</v>
<v t="knoppix.20191029161928.33"><vh>@clean stack.h</vh>
<v t="knoppix.20191029161928.77"><vh>Stack interface</vh></v>
</v>
<v t="knoppix.20191029161928.35"><vh>@clean string.c</vh>
<v t="knoppix.20191029161928.86"><vh>String implementation</vh>
<v t="knoppix.20191029161928.87"><vh>string new (string text)</vh></v>
<v t="knoppix.20191029161928.88"><vh>void   destroy (string me)</vh></v>
<v t="knoppix.20191029161928.89"><vh>size_t size (string me)</vh></v>
<v t="knoppix.20191029161928.90"><vh>string append (string me, string more_text)</vh></v>
<v t="knoppix.20191029161928.91"><vh>string prepend (string me, string more_text)</vh></v>
<v t="knoppix.20191029161928.92"><vh>string first (string me, size_t bytes)</vh></v>
<v t="knoppix.20191029161928.93"><vh>string last (string me, size_t bytes)</vh></v>
<v t="knoppix.20191029161928.94"><vh>string indexOf (string me, const char ch)</vh></v>
<v t="knoppix.20191029161928.95"><vh>size_t lastIndexOf (string me, const char ch)</vh></v>
<v t="knoppix.20191029161928.96"><vh>string interpolate (string me, ...)</vh></v>
</v>
</v>
<v t="knoppix.20191029161928.47"><vh>@clean string.h</vh>
<v t="knoppix.20191029161928.85"><vh>String interface</vh></v>
</v>
<v t="knoppix.20191029161928.49"><vh>@clean basic_objects.h</vh></v>
<v t="knoppix.20191219184003.1"><vh>@clean dynamic_objects.h</vh>
<v t="caminhante.20200402212006.1"><vh>Dynamic object macros</vh>
<v t="caminhante.20200402212047.1"><vh>Struct-defining macros</vh></v>
<v t="caminhante.20200402213256.1"><vh>Type macros</vh></v>
<v t="caminhante.20200402212137.1"><vh>Message macros</vh></v>
<v t="caminhante.20200402212018.1"><vh>Handler macros</vh></v>
<v t="caminhante.20200403195702.1"><vh>Class macros</vh></v>
</v>
</v>
<v t="caminhante.20200306125753.1"><vh>@clean utils.h</vh></v>
<v t="knoppix.20191029161928.3"><vh>clean file.c</vh>
<v t="knoppix.20191029161928.54"><vh>FilePath implementation</vh>
<v t="knoppix.20191029161928.55"><vh>object FilePath new (string base_path, string filename, string extension)</vh></v>
<v t="knoppix.20191029161928.56"><vh>void            destroy (me(FilePath))</vh></v>
<v t="knoppix.20191029161928.57"><vh>string          complete_path (me(FilePath))</vh></v>
<v t="knoppix.20191029161928.58"><vh>object FilePath with_extension (me(FilePath), string new_extension)</vh></v>
</v>
</v>
<v t="knoppix.20191029161928.9"><vh>clean file.h</vh>
<v t="knoppix.20191029161928.59"><vh>FilePath interface</vh></v>
</v>
</v>
<v t="knoppix.20191220133414.1"><vh>Experimental message-passing dynamic object </vh>
<v t="knoppix.20191220133429.1"><vh>Interfaces</vh></v>
<v t="knoppix.20191220133433.1"><vh>Implementations</vh></v>
</v>
<v t="knoppix.20191029161928.50"><vh>File</vh>
<v t="knoppix.20191029161928.51"><vh>File interface</vh></v>
<v t="knoppix.20191029161928.52"><vh>File implementation</vh></v>
<v t="knoppix.20191029161928.53"><vh>File tests</vh></v>
<v t="knoppix.20191029161928.54"></v>
<v t="knoppix.20191029161928.59"></v>
</v>
<v t="knoppix.20191029161928.60"><vh>ListMap</vh>
<v t="knoppix.20191029161928.61"></v>
<v t="knoppix.20191029161928.62"></v>
<v t="knoppix.20191029161928.75"><vh>ListMap tests</vh></v>
</v>
<v t="knoppix.20191029161928.76"><vh>Stack</vh>
<v t="knoppix.20191029161928.77"></v>
<v t="knoppix.20191029161928.78"></v>
<v t="knoppix.20191029161928.83"><vh>Stack tests</vh></v>
</v>
<v t="knoppix.20191029161928.84"><vh>String</vh>
<v t="knoppix.20191029161928.85"></v>
<v t="knoppix.20191029161928.86"></v>
<v t="knoppix.20191029161928.97"><vh>String tests</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="caminhante.20200306125753.1">// Utilities

#include &lt;ctype.h&gt;
#include &lt;fcntl.h&gt;
#include &lt;stdarg.h&gt;
#include &lt;stdbool.h&gt;
#include &lt;stddef.h&gt;
#include &lt;stdint.h&gt;
#include &lt;stdio.h&gt;
#include &lt;stdlib.h&gt;
#include &lt;string.h&gt;
#include &lt;sys/stat.h&gt;
#include &lt;sys/types.h&gt;
#include &lt;unistd.h&gt;</t>
<t tx="caminhante.20200402212006.1"></t>
<t tx="caminhante.20200402212018.1">#define handler(NAME) \
  Handler_##NAME

#define define_handler(CLASS) \
  bool handler(CLASS) (class_t me, msg_t msg)

#define declare_handler(CLASS) \
  define_handler(CLASS)

#define is_method(TYPE,METHOD) \
  (msg-&gt;_subject == method_id(TYPE,METHOD))

#define my_message(TYPE,METHOD) \
  ((objptr(message(TYPE,METHOD)))msg)

#define my_object(CLASS) \
  ((objptr(class_private_face(CLASS)))me)
</t>
<t tx="caminhante.20200402212047.1">\*
Macros for simplified struct defining
You need to define a macro which will receive another macro as argument, passing its fields.
Example:

  #define $test(_) \
    _(long,a,1) \
    _(long,b,2) \
  define_struct3(test)
*\

#define ref(NAME) \
  $##NAME

#define struct_items3(TYPE,NAME,VALUE) \
  TYPE NAME;

#define struct_items2(TYPE,NAME) \
  TYPE NAME;

#define init_values(TYPE,NAME,VALUE) \
  VALUE,

#define define_struct3(NAME) \
  struct NAME { \
    ref(NAME)(struct_items3) \
  } NAME = { ref(NAME)(init_values) }

#define define_struct2(NAME) \
  struct NAME { \
    ref(NAME)(struct_items2) \
  }
</t>
<t tx="caminhante.20200402212137.1">#define message(TYPE,METHOD) \
  $Message$##TYPE##$##METHOD

#define new_message(TYPE,METHOD,ARGS...) \
  (object message(TYPE,METHOD)) { \
    ._subject=&amp;(method_id(TYPE,METHOD)), \
    ## ARGS }

#define define_message(TYPE,METHOD) \
  interface message(TYPE,METHOD) { \
    $method _subject; \
    pointer _return; \
    method_ref(TYPE,METHOD)(struct_items2) }

#define my_handler(OBJ) \
  (OBJ-&gt;_type._handler)

#define send(OBJ,MSG) \
  my_handler(OBJ)(OBJ, MSG)
</t>
<t tx="caminhante.20200402213256.1">@
Type classes 
@c
#define type_items(NAME) \
  $method NAME;

#define type(NAME) \
  $Type$##NAME

#define method_ref(TYPE,NAME) \
  $##TYPE##$##NAME

#define method_id(TYPE,METHOD) \
  type(TYPE).METHOD

#define define_type(NAME) \
  class { \
    $method _handler; \
    ref(NAME)(type_items) \
  } type(NAME) = {0}</t>
<t tx="caminhante.20200403195702.1">#define class_public_face(NAME) \
  $Class$##NAME

#define class_private_face(NAME) \
  $Private$##NAME

#define class_handler(CLASS) \
  class_public_face(CLASS))._type

#define declare_class(CLASS) \
  declare_handler(CLASS); \
  class class_public_face(CLASS) { \
    object $Type _type; \
  } class_public_face(CLASS) = { {handler(CLASS)} }

#define allocate_object(CLASS) \
  allocate(object class_private_face(CLASS))

#define define_class(CLASS) \
  interface class_private_face(CLASS) { \
    object $Type _type; \
    ref(CLASS)(struct_items2) \
  }

#define construct_object(OBJ,CLASS,FIELDS...) \
  memcpy((void*)OBJ, \
    &amp;(object class_private_face(CLASS)) { \
      ._type=class_handler(CLASS), \
      ## FIELDS }, \
    sizeof(object class_private_face(CLASS)))
</t>
<t tx="knoppix.20191029161928.1">@language c
@tabwidth -2</t>
<t tx="knoppix.20191029161928.11">#include "listmap.h"

@others</t>
<t tx="knoppix.20191029161928.2"></t>
<t tx="knoppix.20191029161928.25">#ifndef _LISTMAP_CLASS_
#define _LISTMAP_CLASS_

#include "basic_objects.h"

@others

#endif</t>
<t tx="knoppix.20191029161928.27">#include "stack.h"

@others</t>
<t tx="knoppix.20191029161928.3">#include "file.h"
#include "string.h"

@others</t>
<t tx="knoppix.20191029161928.33">#ifndef _STACK_CLASS_
#define _STACK_CLASS_

#include "basic_objects.h"

@others

#endif</t>
<t tx="knoppix.20191029161928.35">#include "string.h"

@others</t>
<t tx="knoppix.20191029161928.47">#ifndef _STRING_CLASS_
#define _STRING_CLASS_

#include "basic_objects.h"

@others

#endif</t>
<t tx="knoppix.20191029161928.49">#ifndef _BASICOBJS_H_
#define _BASICOBJS_H_

#include "utils.h"

// Macros and definitions for immutable states and method-calling-based object model support.

#define funcptr *const
#define dataptr const*const
#define iterptr const*
#define pointer void dataptr
#define string  char dataptr

#define interface   struct
#define object      const struct
#define class       const struct

#define objptr(CLASS)       struct CLASS dataptr
#define iterator(CLASS)     struct CLASS iterptr
#define me(CLASS)           objptr(CLASS) me
#define mutable(CLASS,OBJ)  *((CLASS const* *) &amp;OBJ)

#define allocate(CLASS)     malloc(sizeof(CLASS))

#endif
</t>
<t tx="knoppix.20191029161928.50"></t>
<t tx="knoppix.20191029161928.51">enum $File$AccessMode {
  $File$read = O_RDONLY,
  $File$write = O_WRONLY,
  $File$write_read = O_RDWR,
  $File$append = O_APPEND,
  $File$create = O_CREAT,
  $File$truncate = O_TRUNC,
};

interface $File {
  object File (funcptr new) (objptr(FilePath) filepath, $File$AccessMode modes);
  string      (funcptr read) (me(File), size_t bytes);
  bool        (funcptr write) (me(File), string text);
  size_t      (funcptr size) (me(File));
};

struct File {
  object FilePath filepath;
  int fileno;
  bool is_open;
  struct stat filestats;
};</t>
<t tx="knoppix.20191029161928.52"></t>
<t tx="knoppix.20191029161928.53">static void File_tests () {}</t>
<t tx="knoppix.20191029161928.54">@others

class $FilePath FilePath = {
  FilePath_new,
  FilePath_destroy,
  FilePath_complete_path,
  FilePath_with_extension
};</t>
<t tx="knoppix.20191029161928.55">static object FilePath FilePath_new (string base_path, string filename, string extension) {
  return (object FilePath){base_path, filename, extension};
}</t>
<t tx="knoppix.20191029161928.56">static void FilePath_destroy (me(FilePath)) {
  if (me == 0) return;
  String.destroy(me-&gt;base_path);
  String.destroy(me-&gt;filename);
  String.destroy(me-&gt;extension);
}</t>
<t tx="knoppix.20191029161928.57">static string FilePath_complete_path (me(FilePath)) {
  if (me == 0) return 0;
  string a = String.append(me-&gt;base_path, me-&gt;filename);
  string b = String.append(a,me-&gt;extension);
  String.destroy(a);
  return b;
}</t>
<t tx="knoppix.20191029161928.58">static object FilePath FilePath_with_extension (me(FilePath), string new_extension) {
  if (me == 0) return (object FilePath){0};
  return FilePath_new(me-&gt;base_path,me-&gt;filename,new_extension);
}</t>
<t tx="knoppix.20191029161928.59">interface $FilePath {
  object FilePath (funcptr new) (string base_path, string filename, string extension);
  void            (funcptr destroy) (me(FilePath));
  string          (funcptr complete_path) (me(FilePath));
  object FilePath (funcptr with_extension) (me(FilePath), string new_extension);
};

struct FilePath {
  string base_path;
  string filename;
  string extension;
};

extern class $File File;</t>
<t tx="knoppix.20191029161928.60"></t>
<t tx="knoppix.20191029161928.61">interface $ListMap {
  // WARN This function does not prevent the creation of cyclical lists!
  object ListMap  (funcptr new) (string key, pointer value, objptr(ListMap) next);
  // [ likely valid ListMap object -&gt; deallocates its `-&gt;key` and `-&gt;value` entries | &lt;Identity&gt; ]
  void            (funcptr destroy) (me(ListMap));
  // [ likely valid ListMap chain -&gt; number of elements in the chain | 0 ]
  size_t          (funcptr size) (me(ListMap));
  // [ likely valid ListMap chain -&gt; nth object at the chain | 0 ]
  objptr(ListMap) (funcptr nth) (me(ListMap), size_t index);
  // [ likely valid ListMap chain and an ListMap entry has this key
  // (a key different from a empty string) -&gt;
    // this ListMap entry | 0 ]
  objptr(ListMap) (funcptr lookup) (me(ListMap), string key);
  // [ likely valid ListMap chain and an ListMap entry has this value
  // (a value different from 0) -&gt;
    // this ListMap entry | 0 ]
  objptr(ListMap) (funcptr has) (me(ListMap), pointer value);
  // [ likely valid ListMap objects `me` and `target` -&gt; `target-&gt;next` points to `me` | 0 ]
  // WARN This function does not prevent the creation of cyclical lists!
  bool            (funcptr append) (me(ListMap), objptr(ListMap) target);
  // [ likely valid ListMap chain and an ListMap entry has this key
  // (a key different from a empty string) -&gt;
    // this ListMap entry removed from the chain, returns this ListMap entry | 0 ]
  objptr(ListMap) (funcptr unset) (iterator(ListMap) *me, string key);
  // [ likely valid ListMap chains `me` and `target` -&gt; `target`'s tail `-&gt;next` points to `me` | 0 ]
  // WARN This function does not prevent the creation of cyclical lists!
  bool            (funcptr unite) (me(ListMap), objptr(ListMap) target);
};

struct ListMap {
  string key;
  pointer value;
  objptr(ListMap) next;
};

extern class $ListMap ListMap;
</t>
<t tx="knoppix.20191029161928.62">@others

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
</t>
<t tx="knoppix.20191029161928.63">static bool same_key (objptr(ListMap) listmap, string key) {
  return strcmp(listmap-&gt;key,key) == 0;
}
</t>
<t tx="knoppix.20191029161928.64">// WARN This function does not prevent the creation of cyclical lists!
static object ListMap ListMap_new (string key, pointer value, objptr(ListMap) next) {
  return (object ListMap){ .key=key, .value=value, .next=next };
}
</t>
<t tx="knoppix.20191029161928.65">static void ListMap_destroy (me(ListMap)) {
  if (me == 0) return;
  if (me-&gt;key) free((char*)me-&gt;key);
  if (me-&gt;value) free((void*)me-&gt;value);
}
</t>
<t tx="knoppix.20191029161928.66">static size_t ListMap_size (me(ListMap)) {
  if (me == 0) return 0;
  iterator(ListMap) p = me;
  size_t count = 1;
  while (p-&gt;next) {
    count++; p = p-&gt;next; }
  return count;
}
</t>
<t tx="knoppix.20191029161928.67">// Nth element at list, or 0 if non-existent
static objptr(ListMap) ListMap_nth (me(ListMap), size_t index) {
  if (index &lt; 1) return 0;
  iterator(ListMap) p = me;
  while (p &amp;&amp; --index) {
    p = p-&gt;next; }
  return p;
}
</t>
<t tx="knoppix.20191029161928.68">// Finds a element by its key
static objptr(ListMap) ListMap_lookup (me(ListMap), string key) {
  if (me == 0) return 0;
  if (key == 0) return 0;
  iterator(ListMap) p = me;
  while (p-&gt;next) {
    if (same_key(p, key)) return p;
    p = p-&gt;next; }
  return 0;
}
</t>
<t tx="knoppix.20191029161928.69">// Finds a element by its value
static objptr(ListMap) ListMap_has (me(ListMap), pointer value) {
  if (me == 0) return 0;
  if (value == 0) return 0;
  iterator(ListMap) p = me;
  while (p-&gt;next) {
    if (p-&gt;value == value) return p;
    p = p-&gt;next; }
  return 0;
}
</t>
<t tx="knoppix.20191029161928.70">// `target` becomes the new ListMap head
// WARN This function does not prevent the creation of cyclical lists!
static bool ListMap_append (me(ListMap), objptr(ListMap) target) {
  if (me == 0) return false;
  if (target == 0) return false;
  if (me == target) return false;
  if (target-&gt;next != 0) return false;
  *( (iterator(ListMap)*) &amp;target-&gt;next) = me;
  return true;
}
</t>
<t tx="knoppix.20191029161928.71">// [ head -&gt; p2 := head with .next=0, returns p2 ]
static objptr(ListMap) chopp_next (objptr(ListMap) head) {
  iterator(ListMap) p = head-&gt;next;
  *( (iterator(ListMap)*) &amp;head-&gt;next) = 0;
  return p;
}
</t>
<t tx="knoppix.20191029161928.72">// [ head -&gt; p2 -&gt; p3 := head -&gt; p3, returns p2 with .next=0 ]
static objptr(ListMap) nip_second (objptr(ListMap) head) {
  iterator(ListMap) p2 = head-&gt;next;
  *( (iterator(ListMap)*) &amp;head-&gt;next) = chopp_next(p2);
  return p2;
}
</t>
<t tx="knoppix.20191029161928.73">// For a ListMap list with `key` present:
  // removes the corresponding element, rewiring the list
  // returns the removed element
// Otherwise, returns 0
static objptr(ListMap) ListMap_unset (iterator(ListMap) *me, string key) {
  iterator(ListMap) p = *me; iterator(ListMap) lp = 0;
  while (p) {
    if (same_key(p,key)) {
      // last element case:
      if (p-&gt;next == 0) return chopp_next(lp);
      // common case:
      if (lp) return nip_second(lp);
      // first element case:
      *me = chopp_next(p); return p; }
    lp = p; p = p-&gt;next; }
  return p;
}
</t>
<t tx="knoppix.20191029161928.74">// Concatenates `target` and `me`, `target` becomes the new head
// WARN This function does not prevent the creation of cyclical lists!
static bool ListMap_unite (me(ListMap), objptr(ListMap) target) {
  if (me == 0) return false;
  if (target == 0) return false;
  iterator(ListMap) p = target;
  while (p-&gt;next) p = p-&gt;next;
  return ListMap_append(me,p);
}
</t>
<t tx="knoppix.20191029161928.75">static void print_listmap (objptr(ListMap) l) {
  iterator(ListMap) p = l;
  puts("* *");
  while (p) {
    printf("%s: %p\n",p-&gt;key,p-&gt;value); p = p-&gt;next; }
  puts("* *");
}

static void ListMap_tests () {
  object ListMap l1 = ListMap.new("null",0,0);
  object ListMap l2 = ListMap.new("abc",(pointer)1,&amp;l1);
  object ListMap l3 = ListMap.new("def",(pointer)2,&amp;l2);
  object ListMap l4 = ListMap.new("ghij",(pointer)3,&amp;l3);
  object ListMap L1 = ListMap.new("klm",(pointer)4,0);
  object ListMap L2 = ListMap.new("nop",(pointer)5,&amp;L1);
  iterator(ListMap) head = &amp;l4;
  print_listmap(&amp;l4);
  printf("l4 size: %d\n", ListMap.size(&amp;l4));
  printf("l2 value: %p\n", ListMap.nth(&amp;l4,3)-&gt;value);
  printf("'def' key value: %p\n", ListMap.lookup(&amp;l4,"def")-&gt;value);
  printf("have we a 2 value? %d\n", ListMap.has(&amp;l4,(pointer)2) == &amp;l3);
  printf("unset l4: %p %p\n", ListMap.unset(&amp;head,"ghij"), &amp;l4 );
  print_listmap(head);
  printf("append l4 back? %d\n", ListMap.append(head,&amp;l4));
  print_listmap(&amp;l4);
  printf("unite L2 and l4? %d\n", ListMap.unite(&amp;l4,&amp;L2));
  print_listmap(&amp;L2);
  printf("L2 size: %d\n", ListMap.size(&amp;L2));
}
</t>
<t tx="knoppix.20191029161928.76"></t>
<t tx="knoppix.20191029161928.77">interface $Stack {
  object Stack  (funcptr new)     (pointer data, objptr(Stack) next);
  // [ likely valid Stack object -&gt; deallocates its `-&gt;value` entry | &lt;Identity&gt; ]
  void          (funcptr destroy) (me(Stack));
  // [ likely valid Stack chain -&gt; number of elements in the chain | 0 ]
  size_t        (funcptr size)    (me(Stack));
  // [ likely valid Stack chain -&gt; nth object at the chain | 0 ]
  objptr(Stack) (funcptr nth)     (me(Stack), size_t index);
};

struct Stack {
  pointer value;
  objptr(Stack) next;
};

extern class $Stack Stack;
</t>
<t tx="knoppix.20191029161928.78">@others
class $Stack Stack = {
  Stack_new,
  Stack_destroy,
  Stack_size,
  Stack_nth
};
</t>
<t tx="knoppix.20191029161928.79">static object Stack Stack_new (pointer value, objptr(Stack) next) {
  return (object Stack){value, next};
}</t>
<t tx="knoppix.20191029161928.80">static void Stack_destroy (me(Stack)) {
  if (me == 0) return;
  if (me-&gt;value) free((void*)me-&gt;value);
}</t>
<t tx="knoppix.20191029161928.81">static size_t Stack_size (me(Stack)) {
  if (me == 0) return 0;
  iterator(Stack) p = me;
  size_t count = 1;
  while (p-&gt;next) {
    count++; p = p-&gt;next; }
  return count;
}</t>
<t tx="knoppix.20191029161928.82">static objptr(Stack) Stack_nth (me(Stack), size_t index) {
  if (index &lt; 1) return 0;
  iterator(Stack) p = me;
  while (p &amp;&amp; --index) {
    p = p-&gt;next; }
  return p;
}
</t>
<t tx="knoppix.20191029161928.83">static void Stack_tests () {
  object Stack s1 = Stack.new((pointer)1, 0);
  object Stack s2 = Stack.new((pointer)2, &amp;s1);
  printf("%d\n",Stack.size(&amp;s1));
  printf("%d\n",Stack.size(&amp;s2));
  printf("%p %p %p\n",Stack.nth(&amp;s2,2), &amp;s2, &amp;s1);
  printf("%p %p %p\n",Stack.nth(&amp;s2,1), &amp;s2, &amp;s1);
  printf("%p %p %p\n",Stack.nth(&amp;s2,0), &amp;s2, &amp;s1);
}</t>
<t tx="knoppix.20191029161928.84"></t>
<t tx="knoppix.20191029161928.85">interface $String {
  // [ likely valid string `text` -&gt; copy of `text` | 0 ]
  string (funcptr new) (string text);
  // [ `me` != 0 -&gt; deallocates `me` | &lt;Identity&gt; ]
  void   (funcptr destroy) (string me);
  // [ likely valid string `me` -&gt; number of bytes in `me` | 0 ]
  size_t (funcptr size) (string me);
  // [ likely valid string `me` and `more_text` -&gt;
    // new string with `more_text` concatenated at the end of `me` ]
  string (funcptr append) (string me, string more_text);
  // [ likely valid string `me` and `more_text` -&gt;
    // new string with `more_text` concatenated at the start of `me` ]
  string (funcptr prepend) (string me, string more_text);
  // [ likely valid string `me` and `bytes` &gt; 1 -&gt; new string with a copy of the first `bytes` of `me`'s chars on it ]
  string (funcptr first) (string me, size_t bytes);
  // [ likely valid string `me` and `bytes` &gt; 1 -&gt; new string with a copy of the last `bytes` of `me`'s chars on it ]
  string (funcptr last) (string me, size_t bytes);
  // [ likely valid string `me` and `ch` -&gt; first position at `me` where occurs a char with the same value of `ch` ]
  size_t (funcptr indexOf) (string me, const char ch);
  // [ likely valid string `me` and `ch` -&gt; last position at `me` where occurs a char with the same value of `ch` ]
  size_t (funcptr lastIndexOf) (string me, const char ch);
  // [ likely valid string `me` and variadic sprintf-like arguments -&gt; a new string with sprintf-like arguments interpolated on it ]
  // Example: String.interpolate("%d %d\n",1,2) -&gt; "1 2\n"
  string (funcptr interpolate) (string me, ...);
};

extern class $String String;
</t>
<t tx="knoppix.20191029161928.86">@others

class $String String = {
  String_new,
  String_destroy,
  String_size,
  String_append,
  String_prepend,
  String_first,
  String_last,
  String_indexOf,
  String_lastIndexOf,
  String_interpolate,
};
</t>
<t tx="knoppix.20191029161928.87">static string String_new (string text) {
  if (text == 0) return 0;
  size_t txtlen = strlen(text);
  char *newstr = malloc(txtlen+1);
  if (newstr == 0) return 0;
  strncpy(newstr,text,txtlen);
  return newstr;
}
</t>
<t tx="knoppix.20191029161928.88">static void String_destroy (string me) {
  if (me != 0) free((char*)me);
}
</t>
<t tx="knoppix.20191029161928.89">static size_t String_size (string me) {
  if (me == 0) return 0;
  return strlen(me);
}
</t>
<t tx="knoppix.20191029161928.9">#ifndef _FILE_CLASS_
#define _FILE_CLASS_

#include "basic_objects.h"

@others

#endif</t>
<t tx="knoppix.20191029161928.90">static string String_append (string me, string more_text) {
  if (me == 0) return 0;
  if (more_text == 0) return 0;
  size_t melen = strlen(me), morelen = strlen(more_text);
  char *newstr = malloc(melen+morelen+1);
  if (newstr == 0) return 0;
  strncpy(newstr,me,melen);
  strncpy(newstr+melen,more_text,morelen);
  return newstr;
}
</t>
<t tx="knoppix.20191029161928.91">static string String_prepend (string me, string more_text) {
  if (me == 0) return 0;
  if (more_text == 0) return 0;
  return String_append(more_text,me);
}
</t>
<t tx="knoppix.20191029161928.92">static string String_first (string me, size_t bytes) {
  if (me == 0) return 0;
  if (bytes &lt; 1) return 0;
  size_t melen = strlen(me);
  if (bytes &gt;= melen) return String_new(me);
  char *newstr = malloc(bytes+1);
  if (newstr == 0) return 0;
  strncpy(newstr,me,bytes);
  newstr[bytes] = '\0';
  return newstr;
}
</t>
<t tx="knoppix.20191029161928.93">static string String_last (string me, size_t bytes) {
  if (me == 0) return 0;
  if (bytes &lt; 1) return 0;
  size_t melen = strlen(me);
  if (bytes &gt;= melen) return String_new(me);
  char *newstr = malloc(bytes+1);
  if (newstr == 0) return 0;
  strncpy(newstr,me+melen-bytes,bytes);
  newstr[bytes] = '\0';
  return newstr;
}
</t>
<t tx="knoppix.20191029161928.94">static size_t String_indexOf (string me, const char ch) {
  if (me == 0) return 0;
  char *pos = strchr(me,ch);
  if (pos == 0) return 0;
  return (size_t) (pos-me);
}
</t>
<t tx="knoppix.20191029161928.95">static size_t String_lastIndexOf (string me, const char ch) {
  if (me == 0) return 0;
  char *pos = strrchr(me,ch);
  if (pos == 0) return 0;
  return (size_t) (pos-me);
}
</t>
<t tx="knoppix.20191029161928.96">static string String_interpolate (string me, ...) {
  if (me == 0) return 0;
  va_list args;
  va_start(args,me);
  size_t needed = vsnprintf(0,0,me,args);
  if (needed == 0) return 0;
  char *newbuf = malloc(needed+1);
  if (newbuf == 0) return 0;
  va_start(args,me);
  vsprintf(newbuf,me,args);
  va_end(args);
  return newbuf;
}
</t>
<t tx="knoppix.20191029161928.97">static void String_tests () {
  string a = String.interpolate("* %d %s",1,"teste");
  puts(a);
  printf("%d\n",String.indexOf(a,'s'));
  printf("%d\n",String.lastIndexOf(a,'t'));
  string b = String.first(a,3);
  puts(b);
  string c = String.last(a,3);
  puts(c);
  string d = String.prepend(b,c);
  puts(d);
}
</t>
<t tx="knoppix.20191219151205.1"></t>
<t tx="knoppix.20191219151205.2"></t>
<t tx="knoppix.20191219151205.3"></t>
<t tx="knoppix.20191219151205.4">@language python
import subprocess,os

def getpath (p):
    dict = c.scanAllDirectives(p)
    d = dict.get("path")
    if p.isAnyAtFileNode():
        filename = p.anyAtFileNodeName()
        filename = g.os_path_join(d,filename)
        if filename:
            d = g.os_path_dirname(filename)
    if d is None:
        return ""
    else:
        return g.os_path_normpath(d)

def execute (cmd):
    # return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE)
    return subprocess.check_output(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT)

if c.isChanged(): c.save()
path = c.getNodePath(pClicked)
# path = getpath(c.p)
os.chdir(path)

command = c.p.b
cmdname = c.p.h
g.es('---- '+cmdname+' ----')
g.es(execute(command))
g.es('---- end ----')
</t>
<t tx="knoppix.20191219184003.1">#ifndef _DYNAMOBJS_H_
#define _DYNAMOBJS_H_

#include "basic_objects.h"

// Macros and definitions for a intensional type-safe message-passing-based object system.

typedef objptr($Message) msg_t;
typedef objptr($Class)   class_t;
typedef objptr($Type)    type_t;

typedef bool (funcptr $method) (class_t me, msg_t msg);

interface $Type {
  $method _handler;
};

interface $Class {
  object $Type _type;
};

interface $Message {
  $method _subject;
  pointer _return;
};

@others

#endif</t>
<t tx="knoppix.20191220133414.1"></t>
<t tx="knoppix.20191220133429.1">#define $Animal(_) \
  _(new) \
  _(walk) \
  _(talk)
define_type(Animal);

#define $Animal$new(_) \
  _(string,name)
define_message(Animal,new);

#define $Animal$walk(_) \
  _(long,steps)
define_message(Animal,walk);

#define $Animal$talk(_)
define_message(Animal,talk);</t>
<t tx="knoppix.20191220133433.1">declare_handler(Cat);

class $Class$Cat {
  object $Type _type;
  string name;
} $Class$Cat = { {handler(Cat)}, 0 };

define_handler(Cat) {
  if_is_method(Animal,walk) {
    string name = my_object(Cat)-&gt;name;
    long steps = my_message(Animal,walk)-&gt;steps;
    printf("Cat %s walks %ld steps\n",name,steps);
    return true;
  }
  return false;
}
</t>
<t tx="knoppix.20191220134024.1">@language python
import subprocess,os

def execute (cmd):
    return subprocess.check_output(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT)

if c.isChanged(): c.save()
path = c.getNodePath(pClicked)
os.chdir(path)

filename = ' '.join(c.p.h.split(' ')[1:])
output = filename.split('.c')[0]
cflags = '-std=gnu99 -Wall -Werror -Wfatal-errors -D_GNU_SOURCE -O1'
command = 'gcc '+cflags+' "'+filename+'" -c -o /dev/null;true'

g.es('---- compiling "'+filename+'" ----')
g.es(execute(command))
g.es('---- end ----')
</t>
</tnodes>
</leo_file>

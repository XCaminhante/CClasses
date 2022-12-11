//@+leo-ver=5-thin
//@+node:caminhante.20210302085846.1: * @file sl.h
#ifndef _SL_H_
#define _SL_H_
//@+others
//@+node:caminhante.20221016160434.1: ** /includes
#include "cclasses.h"
//@+node:caminhante.20221016160143.1: ** Numbers
#define natural   size_t
#define integer   long
#define byte      uint8_t
//@+node:knoppix.20191029161928.84: ** String
#define string  char dataptr
#define sallocate(SIZE)   allocate(SIZE+1,char)
//@+node:knoppix.20191029161928.85: *3* String definition
definition $String {
  // [ string `text` -> copy of `text` | 0 ]
  string (funcptr copy) (string text);
  // [ `me` != 0 -> deallocates `me` | nothing ]
  void   (funcptr destroy) (string me);
  // [ string `me` -> number of bytes in `me` | 0 ]
  natural (funcptr size) (string me);
  // [ string `me` and `more_text` ->
    // new string with `more_text` concatenated at the end of `me` ]
  string (funcptr append) (string me, string more_text);
  // [ string `me` and `more_text` ->
    // new string with `more_text` concatenated at the start of `me` ]
  string (funcptr prepend) (string me, string more_text);
  // [ string `me` and `bytes` > 1 -> new string with a copy of the first `bytes` of `me`'s chars on it ]
  string (funcptr first) (string me, natural bytes);
  // [ string `me` and `bytes` > 1 -> new string with a copy of the last `bytes` of `me`'s chars on it ]
  string (funcptr last) (string me, natural bytes);
  // [ string `me` and `ch` -> first position at `me` where occurs a char with the same value of `ch` | -1 ]
  integer (funcptr indexOf) (string me, const char ch);
  // [ string `me` and `ch` -> last position at `me` where occurs a char with the same value of `ch` | -1 ]
  integer (funcptr lastIndexOf) (string me, const char ch);
  // [ string `me` and variadic sprintf-like arguments -> a new string with sprintf-like arguments interpolated on it ]
  // Example: String.interpolate("%d %d\n",1,2) -> "1 2\n"
  string (funcptr interpolate) (string me, ...);
  // [ string `me` and `other` are byte-by-byte identical -> true | false ]
  bool (funcptr areEqual) (string me, string other);
  // [ string `prefix` starts the content of string `me` -> true | false ]
  bool (funcptr startsWith) (string me, string prefix);
  // [ string `suffix` ends the content of string `me` -> true | false ]
  bool (funcptr endsWith) (string me, string suffix);
};

// extern implementation $String String;
//@+node:knoppix.20191029161928.86: *3* String implementation
//@+others
//@+node:knoppix.20191029161928.87: *4* string copy (string str)
static string String_copy (string str) {
  if (str == NULL) return NULL;
  natural slen = strlen(str);
  char *newstr = sallocate(slen);
  if (newstr == NULL) return NULL;
  strncpy(newstr,str,slen);
  return newstr;
}
//@+node:knoppix.20191029161928.88: *4* void destroy (string me)
static void String_destroy (string me) {
  if (me != NULL) free(me);
}
//@+node:knoppix.20191029161928.89: *4* natural size (string me)
static natural String_size (string me) {
  if (me == NULL) return 0;
  return strlen(me);
}
//@+node:knoppix.20191029161928.90: *4* string append (string me, string more_text)
static string String_append (string me, string more_text) {
  if (me == NULL) return NULL;
  if (more_text == NULL) return NULL;
  natural melen = strlen(me), morelen = strlen(more_text);
  char *newstr = sallocate(melen+morelen);
  if (newstr == NULL) return NULL;
  strncpy(newstr,me,melen);
  strncpy(newstr+melen,more_text,morelen);
  return newstr;
}
//@+node:knoppix.20191029161928.91: *4* string prepend (string me, string more_text)
static string String_prepend (string me, string more_text) {
  if (me == NULL) return NULL;
  if (more_text == NULL) return NULL;
  return String_append(more_text,me);
}
//@+node:knoppix.20191029161928.92: *4* string first (string me, natural bytes)
static string String_first (string me, natural bytes) {
  if (me == NULL) return NULL;
  if (bytes < 1) return NULL;
  natural melen = strlen(me);
  if (bytes >= melen) return String_copy(me);
  char *newstr = sallocate(bytes);
  if (newstr == NULL) return NULL;
  strncpy(newstr,me,bytes);
  newstr[bytes] = '\0';
  return newstr;
}
//@+node:knoppix.20191029161928.93: *4* string last (string me, natural bytes)
static string String_last (string me, natural bytes) {
  if (me == NULL) return NULL;
  if (bytes < 1) return NULL;
  natural melen = strlen(me);
  if (bytes >= melen) return String_copy(me);
  char *newstr = sallocate(bytes);
  if (newstr == NULL) return NULL;
  strncpy(newstr,me+melen-bytes,bytes);
  newstr[bytes] = '\0';
  return newstr;
}
//@+node:knoppix.20191029161928.94: *4* integer indexOf (string me, const char ch)
static integer String_indexOf (string me, const char ch) {
  if (me == NULL) return -1;
  char *pos = strchr(me,ch);
  if (pos == NULL) return -1;
  return (integer) (pos-me);
}
//@+node:knoppix.20191029161928.95: *4* integer lastIndexOf (string me, const char ch)
static integer String_lastIndexOf (string me, const char ch) {
  if (me == NULL) return -1;
  char *pos = strrchr(me,ch);
  if (pos == NULL) return -1;
  return (integer) (pos-me);
}
//@+node:knoppix.20191029161928.96: *4* string interpolate (string me, ...)
static string String_interpolate (string me, ...) {
  if (me == NULL) return NULL;
  va_list args;
  va_start(args,me);
  natural needed = vsnprintf(0,0,me,args);
  if (needed == 0) return NULL;
  char *newbuf = sallocate(needed);
  if (newbuf == NULL) return NULL;
  va_start(args,me);
  vsprintf(newbuf,me,args);
  va_end(args);
  return newbuf;
}
//@+node:caminhante.20221202160813.1: *4* bool areEqual (string me, string other)
static bool String_areEqual (string me, string other) {
  if (!me || !other) {return false;}
  return strcmp(me,other) == 0;
}
//@+node:caminhante.20221202161452.1: *4* bool startsWith (string me, string prefix)
static bool String_startsWith (string me, string prefix) {
  if (!me || !prefix) {return false;}
  natural mlen = strlen(me), plen = strlen(prefix);
  // if the strings sizes are insufficient, fail:
  if (mlen < 2 || plen < 1) {return false;}
  // if `prefix` is longer than `me`, fail:
  if (plen > mlen) {return false;}
  return strncmp(me,prefix,plen) == 0;
}
//@+node:caminhante.20221202161948.1: *4* bool endsWith (string me, string suffix)
bool String_endsWith (string me, string suffix) {
  if (!me || !suffix) {return false;}
  natural mlen = strlen(me), slen = strlen(suffix);
  // if the strings sizes are insufficient, fail:
  if (mlen < 2 || slen < 1) {return false;}
  // if `suffix` is longer than `me`, fail:
  if (slen > mlen) {return false;}
  return strncmp(me+mlen-slen,suffix,slen) == 0;
}
//@-others
implementation $String String = {
  String_copy,
  String_destroy,
  String_size,
  String_append,
  String_prepend,
  String_first,
  String_last,
  String_indexOf,
  String_lastIndexOf,
  String_interpolate,
  String_areEqual,
  String_startsWith,
  String_endsWith,
};
//@+node:knoppix.20191029161928.97: *3* String tests
void String_tests (void) {
  string a = String.interpolate("* %d %s",1,"teste");
  puts(a);
  printf("%ld\n",String.indexOf(a,'s'));
  printf("%ld\n",String.lastIndexOf(a,'t'));
  string b = String.first(a,3);
  puts(b);
  string c = String.last(a,3);
  puts(c);
  string d = String.prepend(b,c);
  puts(d);
}
//@+node:caminhante.20210513092746.1: ** void tap_assert (bool expr, natural test_num, char *msg)
void tap_assert (bool expr, natural test_num, char *msg) {
  printf("%s %ld %s\n", (expr ? "ok" : "not ok"), test_num, msg);
}
//@-others
#endif
//@-leo

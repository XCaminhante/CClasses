#include "string.h"

static string String_new (string text) {
  if (text == 0) return 0;
  size_t txtlen = strlen(text);
  char *newstr = malloc(txtlen+1);
  if (newstr == 0) return 0;
  strncpy(newstr,text,txtlen);
  return newstr;
}
static void String_destroy (string me) {
  if (me != 0) free((char*)me);
}
static size_t String_size (string me) {
  if (me == 0) return 0;
  return strlen(me);
}
static string String_append (string me, string more_text) {
  if (me == 0) return 0;
  if (more_text == 0) return 0;
  size_t melen = strlen(me), morelen = strlen(more_text);
  char *newstr = malloc(melen+morelen+1);
  if (newstr == 0) return 0;
  strncpy(newstr,me,melen);
  strncpy(newstr+melen,more_text,morelen);
  return newstr;
}
static string String_prepend (string me, string more_text) {
  if (me == 0) return 0;
  if (more_text == 0) return 0;
  return String_append(more_text,me);
}
static string String_first (string me, size_t bytes) {
  if (me == 0) return 0;
  size_t melen = strlen(me);
  if (bytes >= melen) return String_new(me);
  char *newstr = malloc(bytes+1);
  if (newstr == 0) return 0;
  strncpy(newstr,me,bytes);
  newstr[bytes] = '\0';
  return newstr;
}
static string String_last (string me, size_t bytes) {
  if (me == 0) return 0;
  size_t melen = strlen(me);
  if (bytes >= melen) return String_new(me);
  char *newstr = malloc(bytes+1);
  if (newstr == 0) return 0;
  strncpy(newstr,me+melen-bytes,bytes);
  newstr[bytes] = '\0';
  return newstr;
}
static size_t String_indexOf (string me, const char ch) {
  if (me == 0) return 0;
  char *pos = strchr(me,ch);
  if (pos == 0) return 0;
  return (size_t) (pos-me);
}
static size_t String_lastIndexOf (string me, const char ch) {
  if (me == 0) return 0;
  char *pos = strrchr(me,ch);
  if (pos == 0) return 0;
  return (size_t) (pos-me);
}
static string String_interpolate (string me, ...) {
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

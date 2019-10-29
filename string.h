#ifndef _STRING_CLASS_
#define _STRING_CLASS_

#include "utils.h"

interface $String {
  string (funcptr new) (string text);
  void   (funcptr destroy) (string me);
  size_t (funcptr size) (string me);
  string (funcptr append) (string me, string more_text);
  string (funcptr prepend) (string me, string more_text);
  string (funcptr first) (string me, size_t bytes);
  string (funcptr last) (string me, size_t bytes);
  size_t (funcptr indexOf) (string me, const char ch);
  size_t (funcptr lastIndexOf) (string me, const char ch);
  string (funcptr interpolate) (string me, ...);
};

extern class $String String;

#endif

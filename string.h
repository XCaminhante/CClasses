#ifndef _STRING_CLASS_
#define _STRING_CLASS_

#include "utils.h"

interface $String {
  // [ likely valid string `text` -> copy of `text` | 0 ]
  string (funcptr new) (string text);
  // [ `me` != 0 -> deallocates `me` | <Identity> ]
  void   (funcptr destroy) (string me);
  // [ likely valid string `me` -> number of bytes in `me` | 0 ]
  size_t (funcptr size) (string me);
  // [ likely valid string `me` and `more_text` ->
    // new string with `more_text` concatenated at the end of `me` ]
  string (funcptr append) (string me, string more_text);
  // [ likely valid string `me` and `more_text` ->
    // new string with `more_text` concatenated at the start of `me` ]
  string (funcptr prepend) (string me, string more_text);
  // [ likely valid string `me` and `bytes` > 1 -> new string with a copy of the first `bytes` of `me`'s chars on it ]
  string (funcptr first) (string me, size_t bytes);
  // [ likely valid string `me` and `bytes` > 1 -> new string with a copy of the last `bytes` of `me`'s chars on it ]
  string (funcptr last) (string me, size_t bytes);
  // [ likely valid string `me` and `ch` -> first position at `me` where occurs a char with the same value of `ch` ]
  size_t (funcptr indexOf) (string me, const char ch);
  // [ likely valid string `me` and `ch` -> last position at `me` where occurs a char with the same value of `ch` ]
  size_t (funcptr lastIndexOf) (string me, const char ch);
  // [ likely valid string `me` and variadic sprintf-like arguments -> a new string with sprintf-like arguments interpolated on it ]
  // Example: String.interpolate("%d %d\n",1,2) -> "1 2\n"
  string (funcptr interpolate) (string me, ...);
};

extern class $String String;

#endif

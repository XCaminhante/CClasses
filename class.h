#include "utils.h"

// Macros and definitions for message-passing-based objects

typedef object $Message msg_t;
typedef object $Object obj_t;
typedef object $Type type_t;

typedef const unsigned long $subject;
typedef bool (funcptr $method) (me($Object), objptr($Message) msg);

interface $Type {
  $method _m;
};

interface $Object {
  object $Type _type;
};

interface $Message {
  objptr($Object) _obj;
  $subject _msg;
};

#define subject(m) (($subject)(objptr($Message))(m)->_msg)
#define dispatcher(obj) (($method)((objptr($Object))(obj))->_type._m)
#define send(obj,msg) dispatcher(obj)(obj,msg)
#define send2(obj,msg) ({ mutable($Object,*msg._obj)=obj;dispatcher(obj)(obj,msg); })


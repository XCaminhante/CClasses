# CClasses
This is experimental code to explore some ideas associated with object-oriented
programming and typing issues. The main idea is to achieve this only using C
code and some helper macros.

Abstractions and concepts I want to implement at the moment are:
* Immutable objects
* Interfaces
* Namespaces
* Subtyping
* Polymorfism
* Non-fragile binary classes
* `C++`-like semantic bits, like moving semantics and RAII

A basic idea permeates, supports and makes possible the code of these
experiments: use the semantics of C structs as nested namespaces and the
semantics of the C linker to expose and maintain unique symbols for the code.
For example, it is thanks to unique symbols that message passing can
differentiate between interfaces and compiled code can transparently operate
with new interfaces, messages and classes, which were unknown before the
previous compilation.

Below are explained the two models of objects I'm experimenting with.

## Method-calling-based objects
This object model is really simple and requires little code. But it has no real
encapsulation and has serious restrictions. A relevant problem is that the
internal state of the object is dependent on the interface, instead of depending
on the concrete class managing it at runtime.

It consists of an *interface struct*, one or more *concrete class structs* and
an associated *state struct*. The interface struct contains the signatures of
the methods the classes will have. The state struct contains the private data of
the object.

You invoke the methods of the classes ideally passing a pointer to the object as
the first argument (that's why I created the `me` macro), to obtain the desired
effect.

This is an example of a naive "Stack" interface, a concrete class implementing
it and its respective state table. The basic macros reside at `basic_objects.h`
header file.

```
interface $Stack {
  object Stack  (funcptr new)     (pointer data, objptr(Stack) next);
  void          (funcptr destroy) (me(Stack));
  size_t        (funcptr size)    (me(Stack));
  objptr(Stack) (funcptr nth)     (me(Stack), size_t index);
};

// Methods implementations should appear here, like:
object Stack Stack_new (pointer data, objptr(Stack) next) {
  // ...
  return (object Stack){/***/};
}

// A concrete class struct:
class $Stack Stack = {
  Stack_new,
  Stack_destroy,
  Stack_size,
  Stack_nth
};

// State struct:
struct Stack {
  pointer value;
  objptr(Stack) next;
};

// And you use them like this:
object Stack st1 = Stack.new(/***/);
size_t st2s = Stack.size(st1);
```

## Message-passing-based objects
Operationally, our objects appear to us as struct pointers with a single
function pointer. We instantiate "message" structs and use them as an argument
of that function to get the desired effects. That function returns values
through the message struct, and returns for the call a bool that tells whether
the function dealt with the message or not. This design detail allows the call
to respond synchronously, asynchronously or indirectly (with side effects). This
object pointer is reinterpreted within that function as a struct with secret
fields, which we shouldn't know unless we're modifying or studying the
function's source code.

Semantically, our objects are created by a metaclass, are managed by one or more
hidden classes, and obey one or more interface contracts by answering its
messages. No class can present public methods that are not tied to some
interface. Classes and objects are opaque: no object can have public fields and
no class can be exposed without a intermediating metaclass.

This is by design. These operational restrictions force the adoption of good
programming practices (from my individual point of view) and allow objects and
classes to be modified and extended without necessarily breaking code that has
already been compiled. Type interfaces can be extended as long as the order and
presence of previously existing methods are maintained.

This object system is based on the operation of three types of entities:
"Type$..." interface classes, "Class$..." metaclasses and "Message$..."
interfaces. They are respectively represented by the C types `type_t`, `class_t`
and `msg_t`; and depend upon two basic binary protocols: object memory layout
protocol and message passing protocol.

### Type


### Class


### Message


### Object memory layout protocol


### Message passing protocol



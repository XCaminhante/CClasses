# CClasses
This is experimental code to explore some ideas associated with object-oriented programming and typing issues.
The main idea is to achieve this only using C code and some helper macros.

Abstractions and concepts I want to implementate on C code at the moment are:
* Immutable objects
* Interfaces
* Namespaces
* Subtyping
* Polymorfism
* Non-fragile binary classes
* `C++`-like semantic bits, like moving semantics and RAII

Below are explained the two models of objects I'm experimenting with.

## Method-calling-based objects
This object model is really simple, it requires little code.
But it has no real encapsulation.
Another problem is that the internal state of the object is dependent on the interface, instead of depending on the concrete class that generated it at runtime.

It consists of an *interface table*, one or more *concrete class tables* and an associated *state table*.
The interface table defines the methods that the concrete classes will contain.
The state table contains the private data of the object.

This is an example of a "Stack" interface, a concrete class implementing it and its respective state table.
The basic macros reside at `utils.h` header file.

```
interface $Stack {
  object Stack  (funcptr new)     (pointer data, objptr(Stack) next);
  void          (funcptr destroy) (me(Stack));
  size_t        (funcptr size)    (me(Stack));
  objptr(Stack) (funcptr nth)     (me(Stack), size_t index);
};

// Methods implementations should appear here...

// A concrete class table:
class $Stack Stack = {
  Stack_new,
  Stack_destroy,
  Stack_size,
  Stack_nth
};

// State table:
struct Stack {
  pointer value;
  objptr(Stack) next;
};
```

## Intensional type system, message-passing-based objects
A little more sofisticated and robust model, supporting non-fragile binary interfaces, polymorphic function members, intensional type-safe message passing, and even multiple inheritance.
You can change the instance internal state representation or add new public function members at your interfaces/classes without breaking existing, compiled code.
(Of course, this depends on preserving the behaviour of pre-existing function members.)

(In preparation)


# CClasses
CClasses is an experimental header-only library to explore some ideas about object-oriented programming.
The concepts studied are performed in the user's code in the form of the application of some code conventions, facilitated by macros.

Some abstractions I'm interested in implementing with this library include:
* Immutable objects
* Namespaces
* Intensional types
* Type inheritance
* Algebraic data structures
* Polymorphism
* Classes with non-fragile binary interfaces
* Emulations of details of operational semantics of C++

Some details of the exploration involve code that is not considered idiomatic for the C language or depend on specific features of a certain compiler implementation.

C Structs can be used to create name spaces and avoid conflicts between symbols.
By defining a struct and immediately creating a static const variable with the same name as the struct, we can see the opportunities to set a default initialization for the struct or to use the variable as a single, encapsulated symbol space to differentiate a type or runtime messages.

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



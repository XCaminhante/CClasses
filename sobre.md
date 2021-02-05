# CClasses
CClasses é uma biblioteca experimental apenas-cabeçalho para explorar algumas ideias sobre programação orientada à objetos.
Os conceitos estudados são realizados no código do usuário na forma da aplicação de algumas convenções de código, facilitadas por macros.

Algumas abstrações que tenho interesse em implementar com esta biblioteca incluem:
* Objetos imutáveis
* Espaços de nomes
* Relações de tipos
* Estruturas de dados algébricas
* Polimorfismo
* Classes com interfaces binárias não-frágeis
* Emulações de detalhes da semântica operacional de C++

Alguns detalhes da exploração envolvem código que não é considerado idiomático em C ou dependem de funcionalidades específicas de um certo compilador.

Structs C podem ser usadas para criar espaços de nomes e evitar conflitos entre os símbolos.
Ao se definir uma struct e imediatamente criar uma variável estática com o mesmo nome da struct, podemos ver as oportunidades de definir uma inicialização padrão para a estrutura ou de usar a variável como um espaço de símbolos únicos e encapsulados para diferenciar um tipo ou uma mensagem passada em runtime.

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

## Modelo 1, objetos como tabelas de ponteiros de funções
Este modelo é simples e requer pouco código. Infelizmente é simples demais e possui várias restrições.

Usamos structs para definir interfaces, classes e o estado interno dos objetos.
As structs de interfaces ditam quais métodos públicos as classes podem conter.

As classes precisam usar as mesmas assinaturas das funções definidas na struct de interface, e na mesma ordem, para serem aceitas. A macro "class" usa a struct da interface, portanto os ponteiros das funções da classe concreta precisam vir na mesma ordem da struct.

Uma mesma classe não pode implementar mais de uma interface diretamente, mas é possível criar uma interface que combina outras:

```interface $PersonAndEmployee {
  class $Person asPerson;
  class $Employee asEmployee;
};
```

Também é possível criar uma classe que não implemente uma interface, mas possua classes dentro que implementem:

```class 
```


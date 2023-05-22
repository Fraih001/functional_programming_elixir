# functional_programming_elixir

Notes for functional_programming_elixir

Chapter 1
++ the functional programming paradigm, functions are the basic building blocks, all values are immutable, and the code is declarative
++ Declarative programming focuses on what is necessary to solve a problem, describing the data flow.

Chapter 2
++ Left side of operations and, or, not must be boolean
++ && returns the second expression’s value when the first is truthy
++ || returns the first truthy expression; otherwise, it returns the value of the last expression.
++ Binding is assigning a name to a value (x = 43)
++ Special forms are basic building blocks that cannot be overridden by the developer. (ex: fn end)
++ Functions are first-class citizens - meaning they are like any other value
++ Passing or returning actions in functions is what makes functional programming so different from imperative programming
++ We can share values with functions using closures. A closure has access to variable values both inside and outside of the code block
++ closures remember all the free variables that were referenced in the lexical scope in which they were created
++ A scope is a part of a program—a code block, for example. The lexical scope is related to the visibility of the variables in the code where they were defined.
Named functions are defined inside of modules in Elixir. You can use an atom or aliases to name a module
++ @ <- module attributes (@file_name) within a module
++ Module attributes can be used as annotations, temporary storage, or constants.
++ Importing a module (like File, Integer etc) allows the use of named functions without invoking the Module name (ex: import File, only: [write: 3, read: 1]
++The write/read above references two names functions within the File module and the number is the arity (# of arguments to be given to a function)

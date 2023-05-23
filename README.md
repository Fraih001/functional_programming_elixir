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
++ The write/read above references two names functions within the File module and the number is the arity (# of arguments to be given to a function)

Chapter 3

++ We can avoid rebinding by using the pin operator: ^  
++ Matching strings  
OK -> “Authentication” <> credentials  
Not OK -> credentials <> “Authentication”  
Use String.reverse() if need be  
++ A list ends by linking to an empty list, good to check if last item is an empty [] to stop recursive iteration  
++ Wildcard character (_) can be used in many data structures to signal we don’t want to check [a, _, a] = [‘ap’, ‘asdfas’, ‘ap’]  
++ Lists have special | operator which is used to separate the list and capture specific elements (right side matches first elements of list, left side matches the rest)  
++ Map syntax - %{"2017/01" => 2000, "2017/02" => 2500} is useful for storing anything in a key  
++ Keys must be unique  
++ Keyword lists - keys can be the same - useful for function options (function has same name, but different arity) - another way to think about them is that they are groups of tuples  
++ Structs have same set of keys throughout application, cannot add new key to Data struct for example  
++ Defp defines private functions for your module  
++ Add \\ to create default argument

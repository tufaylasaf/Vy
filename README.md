# Vy

### Introduction

Vy is a custom programming language I wrote using Python.
How does a Programming Language work? This is the question that started me on this journey. Naturally, I had no clue how to do this and after a few YouTube tutorials and Google searches, I understood how this works and tasked myself with writing my own programming Language. The goal was to write a Language where you can program something as simple as a To Do List. I've taken inspiration from languages like Python, C# and Javascript for the Syntax of Vy.

---

### Usage

Download the latest commit or release, and open the root folder in a terminal.  
Then type ` python shell.py ` to run the environment  
To run a Vy script, all you have to do is type ` run "scripts/hello.vy" `  
And that's it! It's that easy.

I have provided my To Do List program as well to get an idea of the syntax or you can check out the syntax rules below.

---

# Syntax

## Statements and Expressions

### Variables and Data types

You can declare Variables just like in Python and the data type will be automatically assigned just like in Python.

```
name = "Tufayl"
age = 19
married = false
countriesVisited = ["Sri Lanka", "Malaysia", "Singapore", "Botswana", "Zimbabwe"]
```

For now Vy only supports int, float, string, boolean and lists.

### Operators

1. Arithmetic Operators for `ints` and `floats`

| Operator    | Meaning | Example |
| ----------- | ----------- | ----------- |
| +   | Addition        | `3 + 4`    |
| -   | Subtraction     | `5 - 7`    |
| *   | Multiplication  | `5 * 5`      |
| /   | Division        | `14 / 7`     |
| ^   | Exponent        | `2 ^ 3`      |

2. Arithmetic Operators for `strings` 

| Operator    | Meaning | Example | Result |
| ----------- | ----------- | ----------- | ----------- |
| +   | Concatenate        | `"Hello " + "There"`      | `"Hello There"`|
| *   | Multiply     | `"Hello, " * 3`      | `"Hello, Hello, Hello, "`|
| /   | Access     | `countriesVisited/2`     | `"Singapore"`|

3. Logical Operators are the same as in Python

## `if` Conditionals

If statements are a mix of Python and C#

```
status = ""

if age <= 12 {
  status = "Child"
}
elif age <= 19{
  status = "Teenager"
}
else{
  status = "Adult"
}
```

You could also use if statements like this.

```
status = if age <= 12 "Child" elif age <= 19 "Teenager" else "Adult"
```

## `for` Loop

```
a = 0

for i = 0 to 10 step 2{
  a = a + i 
}
```

Here the step part is optional, and its default value is 1.  
`break` and `continue` can also be used here.

## `while` Loop

```
i = 0
a = 0

while i < 10{
  a = a + i
  i = i + 1
  if i == 5 {
    continue
  }
  elif i == 8 {
    break
  }
}
```
## `functions`

Functions are defined with the `func` keyword

```
func add(a,b){
  return a + b
}

c = add(5,7)
```

## Built-in Functions

1. `display(arg)` - prints the given `arg` to the terminal
2. `name = input()` - gets input from a user as a string
3. `age = inputInt()` - gets input from a user as an int
4. `clearDisplay()` - clears the terminal
5. `isNum(x)` - returns if `x` is a number
6. `isStr(x)` - returns if `x` is a string
7. `isList(x)` - returns if `x` is a list
8. `isFunc(x)` - returns if `x` is a function
9. `str(19)` - converts a number to a string
10. `append(names,"Tufayl")` - appends the string `"Tufayl"` to a list `names`
11. `name = pop(names, "Tufayl")` - removes the string `"Tufayl"` from the list `names` and assigns it to the variable `name`
12. `len(name)` - returns the length of a list

---

# Improvements

1. Vy is written in python, which makes it very slow. Ideally you would write a language in c++ and use an LLVM.
2. Implement Object Oriented Programming. You can't do much with the current state of the language, only very basic programs.
3. Include some graphics library
4. Include some unique feature. Right now this is like every other generic language, only the syntax is slighly different.

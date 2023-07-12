---
path: '/part-3/1-vscode'
title: 'Visual Studio Code advanced'
hidden: false
---


If there is a method you need, and you can _almost_ remember its name, it's sometimes faster to skip Google and use the `dir` function in the interpreter. It tells you which methods are available to use on a given object:

```python
>>> dir("this is a string")
['__add__', '__class__', '__contains__', '__delattr__', '__dir__', '__doc__', '__eq__',
'__format__', '__ge__', '__getattribute__', '__getitem__', '__getnewargs__', '__gt__',
'__hash__', '__init__', '__init_subclass__', '__iter__', '__le__', '__len__', '__lt__',
'__mod__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__',
'__rmod__', '__rmul__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__',
'capitalize', 'casefold', 'center', 'count', 'encode', 'endswith', 'expandtabs', 'find',
'format', 'format_map', 'index', 'isalnum', 'isalpha', 'isascii', 'isdecimal', 'isdigit',
'isidentifier', 'islower', 'isnumeric', 'isprintable', 'isspace', 'istitle', 'isupper', 'join',
'ljust', 'lower', 'lstrip', 'maketrans', 'partition', 'replace', 'rfind', 'rindex', 'rjust','rpartition', 'rsplit', 'rstrip', 'split', 'splitlines', 'startswith', 'strip', 'swapcase',
'title', 'translate', 'upper', 'zfill']
```

Python strings have a lot of methods available, as you can see above. At this point it might be best to ignore any methods that have underscores in their names, but the rest may well prove useful. Some of them you can figure out by trying them out, and the rest you can search for online.

Python lists don't have quite so many methods:

```python
>>> dir([])
['__add__', '__class__', '__contains__', '__delattr__', '__delitem__', '__dir__', '__doc__',
'__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__gt__', '__hash__',
'__iadd__', '__imul__', '__init__', '__init_subclass__', '__iter__', '__le__', '__len__',
'__lt__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__',
'__reversed__', '__rmul__', '__setattr__', '__setitem__', '__sizeof__', '__str__',
'__subclasshook__', 'append', 'clear', 'copy', 'count', 'extend', 'index', 'insert', 'pop',
'remove', 'reverse', 'sort']
>>>
```

Let's try a few of them, `reverse` and `clear` seem promising:

```python
>>> numbers = [1,2,3,4,5]
>>> numbers.reverse()
>>> numbers
[5, 4, 3, 2, 1]
>>> numbers.clear()
>>> numbers
[]
```

As you can see, these methods do pretty much what you would expect based on their names.

Notice how the interpreter doesn't print out anything when you run the command `numbers.reverse()`. This is because the interpreter prints something out only if the line of code has a value. The `reverse()` method here doesn't return any value.

In the above example we printed out the value of the list `numbers` by typing in just the name of the variable. In fact, it is rarely necessary to explicitly type in `print` commands in the interpreter. You can include them if you want to, however.

Remember to close the interpreter when you are finished. The commands `quit()` or `exit()` will close it, as will the key combo _Control_+_D_ (Linux/Mac) or _Control_+_Z_ (Windows). Especially in Visual Studio Code this is important, as trying to execute another Python program while the interpreter is still running results in a rather cryptic error message:

<img src="4_1_4.png">

## The built-in debugger

We have already spent a fair amount of time and effort on developing debugging skills, mainly through print statement debugging. The Visual Studio Code editor has another tool at your disposal: a built-in _visual debugger_.

To start debugging, first you have to define a _breakpoint_ in your code. A breakpoint is a point in your program where the debugger halts execution. You can set a breakpoint by clicking on the left edge of any line in your program.

The following example is a slightly faulty attempt at solving the exercise _The sum of consecutive numbers_ in the [previous part](/part-3/1-loops-with-conditions). There is a breakpoint on line 5:

<img src="4_1_5.png">

After the breakpoint has been set, choose _Start debugging_ from the _Run_ menu. This opens a list of options, where you should select _Python File_:

<img src="4_1_6.png">

This starts the debugger, which executes your code as usual until the execution reaches a breakpoint and halts. If your code asks for input, remember to type that in in the terminal:

<img src="4_1_7.png">

On the left there is now the _Variables_ view, which contains the current values of all variables active in the code. You can proceed with the execution line by line by clicking on the down arrow, which is labelled _Step into_.

In the image below the loop in the code has already been repeated a few times:

<img src="4_1_8.png">

The debugger has a _Debug console_ tab, which lets you evaluate expressions with the current values stored in the variables. For example, you can check the value of the Boolean expression in the condition of the loop:

<img src="4_1_9.png">

You can include several breakpoints in your program code. When execution has halted, you can start it again by clicking on the blue triangle. Execution proceeds until it reaches the next breakpoint.

The built-in visual debugger is a good alternative to debugging print statements. It is up to you which you choose to employ more in the future. Each programmer has their own preferences, but it's always a good idea to try different options before settling on any single solution.

# Python

Python is a popular interpreted language originally developed by Guido van Rossum in December 1989. It was highly influenced by an earlier interpreted language called ABC. Python is used in education, data analytics, web development, high-level application development, and as a scripting or "glue" language to run tasks written in lower-level languages such as C. Python was named after *Monty Python's Flying Circus* rather than the snake.

## Features

At present Python 2.x is in wide use, while Python 3.x adoption is increasing. Python 2.x support is scheduled to be dropped in 2020. I have chosen to use only Python 3.x for my example programs. I have two examples so far, primarily because I first began programming fizzbuzz in Python before I settled on an algorithm. My first working example used the "if-elif-elif-else" algorithm. I decided I preferred a different algorithm, the "if; if; if-else" algorithm, and used that as a basis for my subsequent programs in other programming languages. I will cover features of both algorithms below.

Python programs can be run from the python interpreter:

```
$ python fizzbuzz.py
```

On many systems the default Python interpreter (if one exists) is Python 2.x as of 2016, but for the programs in this project a Python 2.x interpreter should still work. If you have Python 3.x on your system, but it is not the default Python interpreter, you will have to specify Python 3.x as your interpreter if you wish to use it:

```
$ python3 fizzbuzz.py
```

If you are using a UNIX-like system, you may also execute your Python program directly:

```
$ chmod +x fizzbuzz.py
$ ./fizzbuzz.py
```

In order to execute your Python program directly, the first line of your program should tell the shell to invoke the Python interpreter; otherwise the shell will try to run your Python program as a regular shell script:

```Python
#!/usr/bin/env python
```

In Python single-line comments begin with the pound sign or hash mark (#), as in the POSIX shell. Python also has documentation strings, which are often used as multi-line comments. However, unlike true multi-line comments, the Python interpreter actually stores documentation strings in memory, rather than simply ignoring them. Documentation strings begin and end with three double quotation marks ("""):

```Python
# This is a single-line comment.

"""This is a
documentation 
string.
"""
```

Variable assignment is pretty simple. There is no need to specify that the variable name is a variable, or what data type it is. Python infers the data type depending on the value that is assigned to the variable:

```Python
mod3 = "fizz"
```

Note that Python statements do not need to end in a semicolon, unlike C, JavaScript, and some other languages.

FOR loops are simpler than in C and JavaScript. They are in the form "for x in y:" where y is a list of values and x is a new variable to which each element in y is successively assigned. A counter may be implemented by using the range() function in place of y:

```Python
for num in range(1,101):
	...
```

This will iterate over all the values in the range, beginning at 1, and ending *before* 101, i.e. on 100.

Note that in Python blocks, such as IF statements, loops, and functions, all have a colon (:) at the end of the first line, and the next line is indented. Either tabs or spaces may be used, but it is important to be consistent, and keep track of the number of spaces or tabs you use, or the Python interpreter will throw an error. Also note that in Python there is no symbol or keyword indicating the end of a block. Instead Python uses a decrease in the level of indentation to indicate the end of a block. This is unlike languages such as C, where indentation (and indeed most whitespace) is solely for the benefit of the humans who read the code, and is ignored by the compiler.

Most operators work much as in other languages. Unlike in C and JavaScript, however, the condition in an IF statement does not need to be surrounded by parentheses: 

```Python
if num % 3 == 0:
    ...
```

However, for its boolean operators, Python uses keywords (such as "and") instead of symbols (such as "&&"):

```Python
if num % 3 == 0 and num % 5 == 0:
    ...
```

The "+=" notation works in Python, for strings as well as for numerical values:

```Python
text += "fizz" 
```

Older versions of Python have a print statement:

```Python
print num
```

In Python 3, however, print() is a function:

```Python
print(num)
```

In Python there is a simple syntax for testing whether a variable contains a value, or is empty:

```Python
if text:
    ...
```

This returns "True" if the "text" variable contains a value and "False" if the "text" variable is empty.

For more on Python, check out the <a href="https://www.python.org">Python website</a> for more information on Python. 

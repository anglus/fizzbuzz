# The POSIX Shell

The shell is the command-line interpreter on a UNIX system, and it is a programming language as well. It is largely used for system administration tasks, but advanced shells such as KornShell, the Bourne-Again shell, and the Z shell can be used for many general programming tasks where an interpreted language such as Python or Ruby might be used. Of course, Python and Ruby have large libraries which the UNIX shells lack. However, the purpose of the shell is not to perform all kinds of specific functions, but rather to "glue" different programs (often written in other, lower-level languages, such as C) together. 

The POSIX shell is an IEEE standard for command-line interpreters. It is an extension of the Bourne shell (sh) distributed with UNIX Version 7 in 1979, and a subset of KornShell (ksh), distributed with most commercial UNIX operating systems since 1988. The POSIX shell is not a specific software program; rather it is a standard which other software programs may implement. On commercial UNIX systems /bin/sh is usually an extension of the Bourne shell that implements the POSIX shell. On BSD systems /bin/sh is usually the Almquist shell (ash), originally an open-source implementation of the Bourne shell, which now implements the POSIX shell. On Linux systems /bin/sh is usually either the Almquist shell, the Debian Almquist shell (dash), or the Bourne-Again shell (bash); or a link thereto. The advanced shells such as KornShell (ksh), the Bourne-Again shell (bash), and the Z shell (zsh), are all supersets of the POSIX shell. Any of the aforementioned shells (except possibly the Bourne shell) should be able to run programs written to the POSIX shell standard. The C shell (csh) and TENEX C shell (tcsh), however, are incompatible with such programs.

## Features

Shell scripts may be executed by invoking the command-line interpreter:

```
$ sh fizzbuzz.sh
```

They may also be executed by invoking the shell script directly, but first the script must be made executable using the chmod command:

```
$ chmod +x fizzbuzz.sh
$ ./fizzbuzz.sh
```

The first line in a shell script begins with "#!", followed by the location of the command-line interpreter:

```Shell
#!/bin/sh
```

All UNIX-like systems should at least have a Bourne-compatible (and likely POSIX-compliant) shell at /bin/sh. Other shells may be in a different location, so for optimal portability you may use the /usr/bin/env command to find your shell:

```Shell
#!/usr/bin/env ksh
```

UNIX shell scripts use the pound sign or hash mark (#) to begin comments. A comment ends at the end of the line, so each line of comment must begin with a #:

```Shell
# This is a line of comment.
# This is another line of comment.
```

When assigning variables in the POSIX and other Bourne-compatible shells, leave no spaces around the equals sign:

```Shell
num=1
```

The POSIX shell has a FOR loop for iterating over lists of items:

```Shell
for num in 1 2 3 4
do
  ... 
done
```

However, this would get tedious for very long lists, so if we want to use a counter in the POSIX shell (as opposed to bash, ksh, and zsh), we need to use a WHILE loop, then increment the counter at the end of each loop:

```Shell
while [ $num -le 100 ]
do
  ...
  num=$(($num + 1))
done
```

Note that the conditional expression "$num -le 100" is contained within square brackets. Single square brackets are preferred for portability across shells. However, if you are specifically targeting advanced shells such as bash, ksh, or zsh, you should use double square brackets. The single square bracket is actually an alias for the UNIX test command, which tests a condition and returns a boolean value.

Also note that a variable must be prefaced by a dollar sign each time it is referenced:

```Shell
some_var = "some value"
echo $some_var
```

Further note that the POSIX shell and other Bourne-compatible shells use a different kind of comparison operator from the comparison operators used in most other programming languages for integer comparison. Whereas other programming languages (including the C shell) use operators such as "==", "!=", "<", ">", "<=", and ">=", Bourne-compatible shells use operators such as "-eq", "-ne", "-lt", "-gt", "-le", and "-ge".

Finally, note that arithmetic expressions are enclosed in double parentheses, and a dollar sign prefacing an arithmetic expression references the value to which it evalutes:

```Shell
echo $((12 % 3))
```

The above is equivalent to:

```Shell
echo 0
```

At this point it is probably worth noting that the POSIX shell uses "echo" for print statements. Some shells, such as ksh, also have a "print" command.

The POSIX shell uses keywords to denote the beginning and end of blocks of text, rather than the curly braces used in the C family of languages. In some cases the keyword used to denote the end of a block is simply the keyword used to denote the beginning of the block, typed backwards:

```Shell
if [ ... ]
then
  ...
fi
```

In the POSIX shell variable names may be surrounded with curly braces for convenience in various situations, in particular for concatenating the value of a variable with a string literal:

```Shell
text=${text}buzz
```

The above code concatenates the value contained in the "text" variable with the string literal "buzz", and assigns the result back to the "text" variable. If "text" is empty, the result is "buzz". If "text" contains the value "fizz", the result is "fizzbuzz".

The POSIX shell and other Bourne-compatible shells also have a powerful syntax for parameter expansion:

```Shell
echo ${text:-$num}
```

The above expression means "if the 'text' variable is defined and not empty, substitute the value of the 'text' variable; otherwise substitute the value of the 'num' variable." In other programming languages it would be accomplished with an IF-ELSE statement, or perhaps with a ternary operator, such as the following Ruby example:

```Ruby
puts text != "" ? text : num 
```

For more information on the POSIX shell, see the documentation available at <a href = "http://pubs.opengroup.org/onlinepubs/009695399/utilities/xcu_chap02.html">The Open Group</a>.

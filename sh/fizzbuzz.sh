#!/bin/sh

# Copyright (c) 2016, Matthew Morris <user="anglus"; domain="gmail.com">
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

# In the POSIX shell all comments begin with the pound or hash mark.
# The first line of the program begins with "#!" followed by the location of
# the shell on your system (usually /bin/sh for the POSIX shell). 

# When declaring variables, leave no spaces around the equals sign.
mod3="fizz"
mod5="buzz"
num=1

# The POSIX shell has a FOR loop for iterating over lists of items, but if we
# want to use a counter we need to use a WHILE loop.
#
# Conditional expressions are contained within square brackets.
# Single square brackets are preferred for portability across shells.
# Double square brackets may be used if you are targeting bash, ksh, or zsh.
#
# Each time a variable is called it must be prefaced by a dollar sign, e.g.
# "$some_var".
#
# The POSIX shell uses operators such as "-le" and "-eq" instead of the
# conventional operators used in most other programming languages, such as "<="
# and "==".
while [ $num -le 100 ]
do
  # Set the value of the "text" variable to an empty string at the beginning of
  # each loop.
  text=""

  # IF statements are closed by "if" spelled backwards.
  #
  # Just as the dollar sign calls the value of a variable, $((...)) calls the
  # value that the arithmetic expression enclosed within evaluates to.
  if [ $(($num % 3)) -eq 0 ]
  then
	# String concatenation of a variable and a string literal is peformed by
	# calling the variable, enclosed in curly brackets, with the string literal
	# directly following the closing curly bracket.
    text=${text}fizz 
  fi

  if [ $(($num % 5)) -eq 0 ]
  then
    text=${text}buzz 
  fi

  # The POSIX shell uses "echo" for print statements. Some shells, such as ksh,
  # also have a "print" command.
  #
  # Below is an example of parameter expansion. The expression "${text:-$num}"
  # means "if the 'text' variable is set and not null, substitute the value of
  # the 'text' variable; otherwise substitute the value of the 'num' variable." 
  echo ${text:-$num}

  # Increment the counter for the next iteration of the while loop.
  num=$(($num + 1))
done

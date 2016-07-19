# Go

Go is a compiled programming language in the C tradition, and is intended to be used where languages such as C, C++, and Java are used, such as systems programming, application programming, and server-side web programming.

The Go programming language was developed at Google by Robert Griesemer, Rob Pike, and Ken Thompson, and released on November 10, 2009. Ken Thompson is the primary creator of the UNIX operating system, as well as the creator of the B programming language, which his co-worker Dennis Ritchie developed into C. Rob Pike is a co-author of *The Unix Programming Environment* and *The Practice of Programming*. In addition, Thompson and Pike are co-creators of the UTF-8 character encoding. Both are long-time gurus of the UNIX operating system and the C programming language.  

## Features

Go programs may be compiled and run without creating a permanent executable file:

```
$ go run fizzbuzz.go
```

Of course, you may create an executable file if you so desire:

```
$ go build fizzbuzz.go
$ ./fizzbuzz
```

Go programs are made of packages. They begin running in the "main" package:

```Go
package main
```

Libraries are called using the "import" keyword:

```Go
import "fmt"
```

The "fmt" package implements formatted input/output functions, like the "stdio.h" header file in C.

Functions begin with the "func" keyword:

```Go
func main() {
	...
}
```

If there is no return type, the return type does not need to be specified, unlike C, where a return type of "void" must be specified. Also unlike C and similar languages, the return type is specified *after* the parentheses. Likewise, where a variable is declared with its type, the type is specified *after* the variable name:

```Go
var some_var string
```

The type may be omitted if the variable is initialized:

```Go
var some_var = "some value"
```

Also, the ":=" assignment statement may be used in place of the "var" keyword *within a function*; "var" is mandatory outside a function. The following contrived example demonstrates the use of ":=" within a function:

```Go
func square(n int) int {
	sn := n*n
	return sn
}
```

Note that semicolons are unnecessary at the end of statements, although they still work, for those who have the habit ingrained. 

The FOR loop is Go's sole loop. As in C, the "for" keyword is followed by three components, separated by semicolons:

```Go
for num := 1; num <= 100; num++ {
	...
}
```

Note that there are no parentheses around the three components, as in C and similar languages. The curly braces, on the other hand, are always required, even if the FOR loop contains only one statement.

In Go spaces (or rather the lack thereof) can be used just like parentheses, to group parts of an arithmetic expression:

```Go
if num%3 == 0 {
	...
}
```

Here the lack of spaces in "num%3" indicates to the Go compiler that the % operator should be evaluated before the == operator.

Go's input/output functions work similarly to those of C, except like Java's "System.out.println", Go also has a function that prints lines of text:

```Go
fmt.Println(text)
```

In addition to the traditional format specifiers of C (e.g. "%s" for string and "%d" for decimal integer), Go also has such useful format specifiers as "%v" (for printing the value of any variable) and "%T" (for printing a variable's type).

For more information on Go, go to the <a href="https://golang.org/">Go Programming Language</a> website.

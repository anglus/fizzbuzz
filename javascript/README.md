# JavaScript

JavaScript is an interpreted programming language with a C-like syntax that is built into most modern Web browsers. It is also the default scripting language in HTML5. It is most commonly used to add interactive functionality to Web pages, but is increasingly used for mobile application development, as well as (in the form of Node.js) for applications running on Web servers.

Brendan Eich developed JavaScript at Netscape Communications in 1995. It was first known as "Mocha", then "LiveScript", then finally "JavaScript". Netscape and Sun Microsystems were engaged in strategic collaboration to defend against Microsoft's attempts to wrest control of Internet standards. The name "JavaScript" was a deliberate attempt to piggyback on the burgeoning popularity of Sun's Java programming language. Nevertheless, because "Java" was a Sun trademark, the official specification for JavaScript was named "ECMAScript", after the Ecma International standards organization.

## Features

JavaScript may be run in an interpreter, either in the JavaScript console which is included in the development tools of your Web browser, or in a command-line terminal on your operating system. Mozilla's SpiderMonkey engine may be invoked with the "js" command, whereas Node.js is invoked with the "node" command:

```JavaScript
$ js
> console.log("Hello " + "SpiderMonkey!")
Hello SpiderMonkey!
undefined
> CTRL-D
$ node
> console.log("Hello " + "Node.js!")
Hello Node.js!
undefined
> CTRL-D
```

However, it is common to do JavaScript development in a text editor or integrated development environment. JavaScript programs may be directly embedded in HTML files between the <script></script> tags, or may be included in a separate file that is linked to from the HTML file:

```HTML
<script type="text/javascript" src="fizzbuzz.js"></script>
```

In JavaScript single-line comments begin with "//", and multi-line comments begin with "/*" and end with "*/", as in other C-like languages:

```JavaScript
// This is a single-line comment.

/*
   This is
   a multi-line
   comment.
*/
```
The main logic of a JavaScript program does not need to be contained inside a function, as in C and C++, or inside a class, as in Java.

Variable declarations must begin with the "var" keyword:

```JavaScript
var mod3 = "fizz";
```

Note that statements must end with a semicolon, as in C, C++, and Java; but unlike many interpreted/scripting languages, and also unlike some newer C-like compiled languages, such as Go.

JavaScript only has a handful of data types: number, string, boolean, array, and object.

Unlike in C, C++, and Java, where single quotation marks (') are used to enclose character literals and double quotation marks (") are used to enclose string literals, in JavaScript either single quotation marks or double quotation marks may be used to enclose string literals, as in the following contrived example:

```JavaScript
var mod3 = "fizz";
var mod5 = 'buzz';
```

FOR loops in JavaScript are much as in other C-like languages:

```JavaScript
for (num = 1; num <= 100; num++) {
  ...
}
```

Note that the "var" keyword is not necessary before the counter variable "num". Also note that JavaScript uses curly braces to begin and end blocks, just as in other C-like languages.

The condition in an IF statement must be enclosed in parentheses:

```JavaScript
if (num % 3 === 0) {
  text += mod3;
}
```

Note that, as with most C-like languages, JavaScript supports combined arithmetic and assignment operators such as "+=". Also note the use of "===". In JavaScript the "==" operator can treat values of different types as equivalent, whereas the "===" operator will only treat values of the same data type as equivalent:

```JavaScript
7 == "7"     // true
7 === "7"    // false
7 === 7      // true
```

Because programmers expect the latter behavior, the "===" operator is preferred in JavaScript.

In JavaScript you can use a variable name as the sole condition of an IF statement. If the variable is empty, the condition evaluates to false, and if the variable has a value, the condition evaluates to true:

```JavaScript
var text = "";
...
if (text) {
  ...
} else {
  ...
}
```

The output of a JavaScript program may be sent to the console:

```JavaScript
console.log("Hello " + "world!");
```

Note that JavaScript, like Java, uses the "+" operator for string concatenation.

Console output may be used in the Web browser for testing and debugging. Additionally, the console may be used as output when using a JavaScript engine such as SpiderMonkey or Node.js directly from an operating system's command line.

As JavaScript is most commonly used as a front-end Web development language, it has facilities for output directly to a Web page:

```JavaScript
document.write(<p>"Hello " + "world!"</p>);
```

This will output the text "Hello world!" to the Web page that called the JavaScript program.

Finally, JavaScript can send its output to a pop-up button:

```JavaScript
alert("Hello " + "world!");
```

This functionality is easily abused, which may annoy your clients or users. Use alerts sparingly, if at all.

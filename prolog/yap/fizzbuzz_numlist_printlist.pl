#!/usr/bin/yap -L --

% Copyright (c) 2017, Matthew Morris
%
% Permission to use, copy, modify, and/or distribute this software for any
% purpose with or without fee is hereby granted, provided that the above
% copyright notice and this permission notice appear in all copies.
%
% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
% WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
% MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
% ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
% WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
% ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
% OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

:- initialization main.

fizzbuzz(N,fizzbuzz) :- N mod 3 =:= 0, N mod 5 =:= 0.
fizzbuzz(N,fizz)     :- N mod 3 =:= 0, N mod 5 =\= 0.
fizzbuzz(N,buzz)     :- N mod 3 =\= 0, N mod 5 =:= 0.
fizzbuzz(N,N)        :- N mod 3 =\= 0, N mod 5 =\= 0.

apply(F,[],[]).
apply(F,[X|[]],[Y])   :- call(F,X,Y).
apply(F,[X|Xs],[Y|Ys]) :- call(F,X,Y), apply(F,Xs,Ys).

printlist([]).
printlist([X|Xs]) :- writeln(X), printlist(Xs).

main :-
    use_module(library(lists)),
    numlist(1,100,Numlist),
    apply(fizzbuzz,Numlist,FBList),
    printlist(FBList).

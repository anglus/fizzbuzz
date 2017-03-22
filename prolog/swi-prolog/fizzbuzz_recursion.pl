#!/usr/bin/swipl -s -q

% Copyright (c) 2016, Matthew Morris
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
fizzbuzz(N,fizz) :- N mod 3 =:= 0, N mod 5 =\= 0.
fizzbuzz(N,buzz) :- N mod 3 =\= 0, N mod 5 =:= 0.
fizzbuzz(N,N) :- N mod 3 =\= 0, N mod 5 =\= 0.

fb :- fb(1).
fb(100) :- fizzbuzz(100,Y), write(Y), nl.
fb(X) :- fizzbuzz(X,Y), write(Y), nl,
    NX is X + 1,
    fb(NX).

main :-
    fb,
    halt.

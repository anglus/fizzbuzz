#!/usr/bin/swipl -s -q

% Copyright (c) 2020, Krzysztof "Serpent7776" Leśniak
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

:- initialization(main).

fizzbuzz_match(_, 0, 0, fizzbuzz) :- true.
fizzbuzz_match(_, 0, _, fizz) :- true.
fizzbuzz_match(_, _, 0, buzz) :- true.
fizzbuzz_match(N, _, _, N) :- true.

fizzbuzz(N, F) :-
	Mod3 is N mod 3,
	Mod5 is N mod 5,
	fizzbuzz_match(N, Mod3, Mod5, F),
	!.

main :-
	between(1, 100, X),
	fizzbuzz(X, F),
	format("~p~n", F),
	fail.

main :-
	halt(1).

#!/usr/bin/env ocaml

(* Copyright (c) 2017, Matthew Morris

   Permission to use, copy, modify, and/or distribute this software for any
   purpose with or without fee is hereby granted, provided that the above
   copyright notice and this permission notice appear in all copies.

   THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
   WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
   MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
   ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE. *)

let fizzbuzz num  =
  match num with
  | num when num mod 3 == 0 && num mod 5 == 0 -> "fizzbuzz"
  | num when num mod 3 == 0 -> "fizz"
  | num when num mod 5 == 0 -> "buzz"
  | _ -> string_of_int num;;

let rec range i j = if i > j then [] else i :: (range (i + 1) j);;

let numlist = range 1 100;;
print_string (String.concat "\n" (List.map fizzbuzz numlist));;
print_string "\n"

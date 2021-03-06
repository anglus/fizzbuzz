(* Copyright (c) 2016, Matthew Morris

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

fun fizzbuzz num = if num mod 3 = 0 andalso num mod 5 = 0 then "fizzbuzz" else
                   if num mod 3 = 0 then "fizz" else
                   if num mod 5 = 0 then "buzz" else
                   Int.toString num

fun listTo 0 = nil
  | listTo n = listTo (n - 1) @ [n]

fun main () =
  let
    val numlist = listTo 100
    val stringlist = map fizzbuzz numlist
  in
    print(String.concatWith "\n" stringlist);
    print "\n"
  end

val _ = main ()

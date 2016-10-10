-- Copyright (c) 2016, Matthew Morris <user="anglus"; domain="gmail.com">
--
-- Permission to use, copy, modify, and/or distribute this software for any
-- purpose with or without fee is hereby granted, provided that the above
-- copyright notice and this permission notice appear in all copies.
--
-- THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
-- ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-- ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-- OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed;

procedure Fizzbuzz_Int_to_String is
   package Str renames Ada.Strings;

begin
   for Num in Integer range 1 .. 100 loop
      if Num mod 3 = 0 and Num mod 5 = 0 then
         Put_Line("fizzbuzz"); 
      elsif Num mod 3 = 0 then
         Put_Line("fizz");
      elsif Num mod 5 = 0 then
         Put_Line("buzz");
      else
         Put_Line(Str.Fixed.Trim(Integer'Image(Num), Str.Left));
      end if;
   end loop;
end Fizzbuzz_Int_to_String;

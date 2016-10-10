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

procedure Fizzbuzz_Elsif is
   type Range_Type is range 1 .. 100;

   package I_IO is new Ada.Text_IO.Integer_IO (Range_Type);

begin
   for Num in Range_Type loop
      if Num mod 3 = 0 and Num mod 5 = 0 then
         Put("fizzbuzz"); 
      elsif Num mod 3 = 0 then
         Put("fizz");
      elsif Num mod 5 = 0 then
         Put("buzz");
      else
         I_IO.Put(
            Item => Num,
            Width => 1,
            Base => 10);
      end if;
      New_Line;
   end loop;
end Fizzbuzz_Elsif;

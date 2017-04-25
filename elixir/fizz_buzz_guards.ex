# Copyright (c) 2017, Matthew Morris
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

defmodule FizzBuzzGuards do
  defp fizzbuzz(n) when (rem n, 3) == 0 and (rem n, 5) == 0, do: "fizzbuzz"
  defp fizzbuzz(n) when (rem n, 3) == 0, do: "fizz"
  defp fizzbuzz(n) when (rem n, 5) == 0, do: "buzz"
  defp fizzbuzz(n), do: n

  def main do
    for num <- 1..100, do: IO.puts fizzbuzz num
  end
end

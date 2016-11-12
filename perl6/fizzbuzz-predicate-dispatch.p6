#!/usr/bin/env perl6

# Copyright (c) 2016, Matthew Morris <user="anglus"; domain="gmail.com">
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

multi sub fizzbuzz(Int $num where $num % 3 == 0 && $num % 5 == 0) { say "fizzbuzz"; }
multi sub fizzbuzz(Int $num where $num % 3 == 0) { say "fizz"; }
multi sub fizzbuzz(Int $num where $num % 5 == 0) { say "buzz"; }
multi sub fizzbuzz(Int $num) { say $num; }

for 1..100 -> $n {
    fizzbuzz($n);
}	

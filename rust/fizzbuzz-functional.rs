// Copyright (c) 2016, Matthew Morris
//
// Permission to use, copy, modify, and/or distribute this software for any
// purpose with or without fee is hereby granted, provided that the above
// copyright notice and this permission notice appear in all copies.
//
// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
// WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
// ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
// WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
// ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
// OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

fn fizzbuzz(num: i32) -> String {
    match num {
        n if n % 3 == 0 && n % 5 == 0 => "fizzbuzz".to_string(),
        n if n % 3 == 0 => "fizz".to_string(),
        n if n % 5 == 0 => "buzz".to_string(),
        n => n.to_string(),
    }
}

fn main() {
    let fblist = (1..101).map(|x| fizzbuzz(x));
    for elem in fblist {
        println!("{}", elem);
    }
}

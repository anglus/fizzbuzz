/* Copyright (c) 2016, Matthew Morris
 * 
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

class FizzBuzzObjectOriented {
    public static class FizzBuzz {
        private int num;
        private boolean divBy3;
        private boolean divBy5;
        private String text;

        public FizzBuzz(int n) {
            num = n;
            divBy3 = num % 3 == 0;
            divBy5 = num % 5 == 0;
            text = "";
        }

        public void setText() {
            if (!divBy3 && !divBy5) {
                text = String.valueOf(num);
            } else {
                if (divBy3)
                    text += "fizz";
                if (divBy5)
                    text += "buzz";
            }
        }

        public String getText() {
            if (text.isEmpty())
                this.setText();

            return text;
        }
    }

    public static void main(String[] args) {
        FizzBuzz fb;
        int i;

        for (i = 1; i <= 100; i++) {
            fb = new FizzBuzz(i);
            System.out.println(fb.getText());
        }
    }
} 

#!/usr/bin/env racket
#lang racket

;;; Copyright (c) 2016, Matthew Morris <user="anglus"; domain="gmail.com">
;;;
;;; Permission to use, copy, modify, and/or distribute this software for any
;;; purpose with or without fee is hereby granted, provided that the above
;;; copyright notice and this permission notice appear in all copies.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
;;; WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
;;; MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
;;; ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
;;; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
;;; ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
;;; OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

(define (fizzbuzz num)
  (match (list (remainder num 3) (remainder num 5))
    [(list 0 0) "fizzbuzz"]
    [(list 0 _) "fizz"]
    [(list _ 0) "buzz"]
    [_ (number->string num)]))

(for ([n (in-range 1 101)])
  (displayln (fizzbuzz n)))

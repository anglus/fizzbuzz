#!/usr/bin/env racket
#lang racket

;;; Copyright (c) 2016, Matthew Morris
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
  (cond
    [(= (remainder num 15) 0) "fizzbuzz"]
    [(= (remainder num 3) 0) "fizz"]
    [(= (remainder num 5) 0) "buzz"]
    [else (number->string num)]))

(define (loop i)
  (when (< i 101)
    (displayln (fizzbuzz i))
    (loop (add1 i))))

(loop 1)

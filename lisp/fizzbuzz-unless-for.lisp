#!/usr/bin/env clisp

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

(defun fizz-buzz (num)
  (when (= (mod num 3) 0) (format t "fizz"))
  (when (= (mod num 5) 0) (format t "buzz"))
  (unless
    (or (= (mod num 3) 0)
        (= (mod num 5) 0))
    (format t "~a" num))
  (format t "~%"))
     
(loop
  for n from 1 to 100
  do (fizz-buzz n))

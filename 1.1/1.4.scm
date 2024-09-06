#lang scheme
; uses + opreator when b is positive and - operator when b is negative
(define (a-plus-abs-b a b) ((if (> b 0) + -) a b))
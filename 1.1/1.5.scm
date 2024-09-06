#lang scheme
; using applicative order (test 0 (p)) never terminates
(define (p) (p)) (define (test x y)
(if (= x 0) 0 y))
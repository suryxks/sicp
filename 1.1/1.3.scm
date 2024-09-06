#lang scheme
(define (square x) (* x x))
(define (sum-of-squares-of-largest x y z)
          (cond ((and (< x y) (< x z)) (+ (square y) (square z)))
                ((and (< y x) (< y z)) (+ (square x) (square z)))
                ((and (< z x) (< z x)) (+ (square x) (square y)))
                (else (+ (square x) (square y)))))
                
                                        
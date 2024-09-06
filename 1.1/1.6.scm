#lang scheme

(define (average x y) (/ (+ x y) 2.0))
(define (square x) (* x x))
(define (good-enough? guess x)
         (< (abs (- (square guess) x) ) 0.001))
(define (improve guess x) (average (/ x guess) guess))
(define (sqrt-iter guess x) 
          (if (good-enough? guess x)
              guess
              (sqrt (improve guess x) x)))

;; EX: 1.6 what hapenns when we use the new-if for our sqrt-iter instead of if 
(define (new-if predicate then-clause else-clause)
         (cond (predicate then-clause)
               (else else-clause)))

(define (sqrt-iter-2 guess x)
  (new-if (good-enough? guess x)
           guess
          (sqrt-iter-2 (improve guess x) x)))
;; The interpreter start evaluating all the subexpressions first before applying the new-if procedure
;; so sqrt-iter-2 never terminates as new-if does not get to run due to this and we eventually 
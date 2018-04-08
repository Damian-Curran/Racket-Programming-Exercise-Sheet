#lang racket

(define (hamming-weight x)
  (define (helper x y)
  (cond ((null? x) y)
         ((= (car x) 0) (helper (cdr x) (+ y 1)))
         (else (helper (cdr x) y))))
  (cond ((null? x) "nothing to check")
        (else (helper x 0))))


(hamming-weight (list 1 0 0 1 0 0 1 0 0))

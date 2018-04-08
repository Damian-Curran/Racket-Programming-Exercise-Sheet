#lang racket

(define (hamming-distance x y)
  (define (helper x y z)
  (cond ((null? x) z)
         ((= (car x) (car y)) (helper (cdr x) (cdr y) (+ z 1)))
         (else (helper (cdr x) (cdr y) z))))
  (cond ((null? x) "nothing to check")
        (else (helper x y 0))))

(hamming-distance (list 1 0 0 1 0 0 1 0 0) (list 0 0 1 1 0 1 1 0 1))
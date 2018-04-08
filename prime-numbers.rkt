#lang racket

(define (decide-prime x)
  (define (prime-helper x k)
    (cond ((= x k) println"true")
          ((= (remainder x k) 0) println"false")
          (else
           (prime-helper x (+ k 1)))))
  (cond ((= x 1) println"false")
        ((= x 2) println"true")
         (else
          (prime-helper x 2))))

(decide-prime 3)
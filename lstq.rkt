#lang racket

(define (lstq l m)
  (define (helper l m q)
    (cond ((null? l) q)
          (else (helper (cdr m) (cdr l) (+ q (* (- (car l) (car m) ) (- (car l) (car m) )))))))
  (cond ((null? m) "nothing to work with")
        (else (helper l m 0))))

(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
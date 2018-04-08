#lang racket

(define (append lst x)
  (cond
    ((null? lst) (cons x '()))
    (else (cons (car lst) (append (cdr lst) x)))))

(define (sod2 x y z)
  (define (helper x y z j)
  (cond ((null? x) j)
         ((= (remainder (+(+ (car x) (car y)) (car z)) 2) 1) (helper (cdr x) (cdr y) (cdr z) (append j 1)))
         (else (helper (cdr x) (cdr y) (cdr z) (append j 0)))))
  (cond ((null? x) "nothing to check")
        (else (helper x y z '()))))

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
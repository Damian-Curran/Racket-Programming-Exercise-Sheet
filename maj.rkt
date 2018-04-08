#lang racket

(define (append lst x)
  (cond
    ((null? lst) (cons x '()))
    (else (cons (car lst) (append (cdr lst) x)))))

(define (maj x y z)
  (define (helper x y z j)
  (cond ((null? x) j)
         ((>= (+(+ (car x) (car y)) (car z)) 2) (helper (cdr x) (cdr y) (cdr z) (append j 1)))
         (else (helper (cdr x) (cdr y) (cdr z) (append j 0)))))
  (cond ((null? x) "nothing to check")
        (else (helper x y z '()))))

(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

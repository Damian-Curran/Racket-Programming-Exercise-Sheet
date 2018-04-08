#lang racket

(define (append lst x)
  (cond
    ((null? lst) (cons x '()))
    (else (cons (car lst) (append (cdr lst) x)))))

(define (chse x y z)
  (define (helper x y z j)
  (cond ((null? x) j)
         ((= (car x) 1) (helper (cdr x) (cdr y) (cdr z) (append j (car y))))
         (else (helper (cdr x) (cdr y) (cdr z) (append j (car z))))))
  (cond ((null? x) "nothing to check")
        (else (helper x y z '()))))

(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
#lang racket

(define (lcycle x)
  (define (helper x k y)
    (cond ((null? y) k)
          ((null? x) (helper x (cons (car y) k) (cdr y)))
          (else (helper (cdr x) k (cons (car x) y)))))
  (cond ((null? (cdr x)) x)
        (else (helper (cdr (cdr x)) (cons (car x) '()) (cons(car (cdr x)) '())))))

(lcycle (list 1 2 3 4 5))


(define (rcycle x)
  (define (helper x k y)
    (cond ((null? y) (cons (car x) k))
          ((null? (cdr x)) (helper x (cons (car y) k) (cdr y)))
          (else (helper (cdr x) k (cons (car x) y)))))
  (cond ((null? (cdr x)) x)
        (else (helper (cdr x) '() (cons (car x) '())))))


(rcycle (list 1 2 3 4 5))
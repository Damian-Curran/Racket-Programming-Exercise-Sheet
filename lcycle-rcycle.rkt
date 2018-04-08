#lang racket

;a function which takes a list as input and returns the list cyclically shifted one place to the left
(define (lcycle x)
  ;helper function which takes  3 lists as input
  (define (helper x k y)
    ;condition 1: check if y is null, if so print k
    ;k being the result of x being shifted one place to the left
    (cond ((null? y) k)
          ;if x is null, recursivly call helper, passing in empty x
          ;changed k which the first element in y has been inserted into, e.g y = 1 2 3 4 5, k now = (1)
          ;and y without its car e.g y = 1 2 3 4 5, cdr y = 2 3 4 5
          ((null? x) (helper x (cons (car y) k) (cdr y)))
          ;recursivly call helper, passes in the cdr of x, k(unchanged) and y which has the first element of x inserted into it
          (else (helper (cdr x) k (cons (car x) y)))))
  ;intial check
  ;conidtion 1: if x is null, return x and exit
  (cond ((null? (cdr x)) x)
        ;else, call helper function and pass x, a list with the first element of x added to it, an empty list which has added second element of x to it
        (else (helper (cdr (cdr x)) (cons (car x) '()) (cons(car (cdr x)) '())))))

;calls function lcycle and passes list to x
(lcycle (list 1 2 3 4 5))

;a function which takes a list as input and it shifts the list cyclically shifted one place to the right
(define (rcycle x)
  (define (helper x k y)
    ;condition 1: check if y is null, if so cons the car of x and print k
    ;k being the result of x being shifted one place to the right
    (cond ((null? y) (cons (car x) k))
          ;if cdr of x is null, recursivly call helper, passing in x
          ;changed k which the first element in y has been inserted into, e.g y = 1 2 3 4 5, k now = (1)
          ;and y without its car e.g y = 1 2 3 4 5, cdr y = 2 3 4 5
          ((null? (cdr x)) (helper x (cons (car y) k) (cdr y)))
           ;recursivly call helper, passes in the cdr of x, k(unchanged) and y which has the first element of x inserted into it
          (else (helper (cdr x) k (cons (car x) y)))))
  ;intial check
  ;conidtion 1: if next element in x is null, return x and exit
  (cond ((null? (cdr x)) x)
        ;else, call helper function and pass x, an empty list, and a list with the first element of x added to it
        (else (helper (cdr x) '() (cons (car x) '())))))

;calls function rcycle and passes list to x
(rcycle (list 1 2 3 4 5))
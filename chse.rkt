#lang racket

(define (append lst x)
  (cond
    ((null? lst) (cons x '()))
    (else (cons (car lst) (append (cdr lst) x)))))

;a function that takes three lists x, y and z of equal length and containing only 0’s and 1’s
;returns a list containing the elements of y in the positions where x is 1 and the elements of z otherwise.
(define (chse x y z)
  ;helper function which takes 4 lists as params
  (define (helper x y z j)
    ;condition 1: is x null? if true, print j
    (cond ((null? x) j)
          ;if first element in x is 1, add first element in y to j
          ;then recursivly call helper function
          ((= (car x) 1) (helper (cdr x) (cdr y) (cdr z) (append j (car y))))
          ;else add first element in z to j
          ;then recursivly call helper function
          (else (helper (cdr x) (cdr y) (cdr z) (append j (car z))))))
  ;condition 1: check if first list is empty
  (cond ((null? x) "nothing to check")
        ;else call helper function and pass 4 lists in
        (else (helper x y z '()))))

;call function chse and pass 3 lists in
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
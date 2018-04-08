#lang racket

;fuction to append a number onto the end of a list
(define (append lst x)
  (cond
    ;checks if lst is empty, if true, add x onto new empty list
    ((null? lst) (cons x '()))
    ;if lst not empty, recursive call to reverse elements in list
    (else (cons (car lst) (append (cdr lst) x)))))

;a function that takes three lists x, y and z
;eturn a list containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise
(define (maj x y z)
  ;helper function which takes 4, 3 user specified and one initialy empty 
  (define (helper x y z j)
    ;condition 1: check if x is null, if true, print list j
    (cond ((null? x) j)
          ;checks if first elements in the 3 lists contain at least 2 1's between them
          ;if true, add 1 to j
          ((>= (+(+ (car x) (car y)) (car z)) 2) (helper (cdr x) (cdr y) (cdr z) (append j 1)))
          ;else add 0 to j
          (else (helper (cdr x) (cdr y) (cdr z) (append j 0)))))
  ;initial check
  ;condition 1: is x null?
  (cond ((null? x) "lists must not be empty")
        ;else call helper function and pass the 4 lists in
        (else (helper x y z '()))))

;calls function maj and passes 3 lists in
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

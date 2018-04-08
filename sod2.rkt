#lang racket

;fuction to append a number onto the end of a list
(define (append lst x)
  (cond
    ;checks if lst is empty, if true, add x onto new empty list
    ((null? lst) (cons x '()))
    ;if lst not empty, recursive call to reverse elements in list
    (else (cons (car lst) (append (cdr lst) x)))))

;a function that takes three lists x, y and z of equal length and containing only 0’s and 1’s
;returns a list containing a 1 where the number of 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise
(define (sod2 x y z)
  ;helper function which takes 4 lists
  (define (helper x y z j)
    ;condition 1: is x null?, if true, print j
    (cond ((null? x) j)
          ;check if first elements in the 3 lists add to make an uneven number
          ;if number = odd, add 1 to j
          ((= (remainder (+(+ (car x) (car y)) (car z)) 2) 1) (helper (cdr x) (cdr y) (cdr z) (append j 1)))
          ;else add 0 to j
          (else (helper (cdr x) (cdr y) (cdr z) (append j 0)))))
  ;initial check
  ;condition 1: check if first list is empty
  (cond ((null? x) "nothing to check")
        ;else call helper with 4 lists as params
        (else (helper x y z '()))))

;calls function sod2 and passes 3 lists in
(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
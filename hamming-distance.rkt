#lang racket

;a function that takes two lists
;returns the number of positions in which they differ
(define (hamming-distance x y)
  ;helper function that takes 2 lists and an integer
  (define (helper x y z)
    ;condition 1: check if x is null, if true, print z, the total number of positions where the lists differ
    (cond ((null? x) z)
          ;if first element in x = first element in y
          ;recursivly call helper function
          ;parameters x without first element, y without first element, z+1
          ((= (car x) (car y)) (helper (cdr x) (cdr y) (+ z 1)))
          ;if elements in lists differ
          (else (helper (cdr x) (cdr y) z))))
  ;initial check
  ;is first list empty, if true, print nothing to check
  (cond ((null? x) "nothing to check")
        ;else call helper function with lists and 0 to set total occurence of same elements to 0
        (else (helper x y 0))))

;call hamming-distance function with 2 lists
(hamming-distance (list 1 0 0 1 0 0 1 0 0) (list 0 0 1 1 0 1 1 0 1))
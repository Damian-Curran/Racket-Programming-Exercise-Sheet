#lang racket

; a function that takes a list l as input
;returns the number of non-zero elements in it
(define (hamming-weight x)
  ;helper function which takes list x and counter y
  (define (helper x y)
  ;condition 1: if x is null, print counter y
  (cond ((null? x) y)
        ;if first element in x is 0
        ;recursivly call helper with paramaters, x without first element, y+1
        ((= (car x) 0) (helper (cdr x) (+ y 1)))
        ;else x is not a 0, it is a 1
        ;recursivly call helper with paramaters, x without first element, y(unchanged)
        (else (helper (cdr x) y))))
  ;initial check
  ;condition 1: is x null?
  (cond ((null? x) "nothing to check")
        ;if x is not null, pass list and 0, 0 sets total occurence of 0 to 0
        (else (helper x 0))))

;calls hamming-weight function and pases in list 
(hamming-weight (list 1 0 0 1 0 0 1 0 0))

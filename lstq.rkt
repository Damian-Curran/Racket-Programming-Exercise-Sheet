#lang racket

;a function that takes as arguments two lists l and m of equal length and containing numbers
;returns d, the distance given by the sum of the square residuals between the numbers in the lists
(define (lstq l m)
  ;helper function that takes 2 lists and a number
  (define (helper l m q)
    ;condition 1: if first list is empty, print q
    (cond ((null? l) q)
          ;else add the square residuals of the first elements in the 2 lists to q
          (else (helper (cdr m) (cdr l) (+ q (* (- (car l) (car m) ) (- (car l) (car m) )))))))
  ;initial check
  ;condition 1: is m empty?
  (cond ((null? m) "nothing to work with")
        ;if m is not empty, call helper function and pass the 2 lists and number in
        (else (helper l m 0))))

;calls function listq and passes in two lists
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
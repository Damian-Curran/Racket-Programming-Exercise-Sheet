#lang racket

;fuction to append a number onto the end of a list
(define (append lst x)
  (cond
    ;checks if lst is empty, if true, add x onto new empty list
    ((null? lst) (cons x '()))
    ;if lst not empty, recursive call to reverse elements in list
    (else (cons (car lst) (append (cdr lst) x)))))

;function implementing the Collatz conjecture
;The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined as follows: start with any positive integer n.
;Then each term is obtained from the previous term as follows: if the previous term is even, the next term is one half the previous term.
;Otherwise, the next term is 3 times the previous term plus 1.
;The conjecture is that no matter what value of n, the sequence will always reach 1.
(define (collatz-list x)
  ;collatz helper function
  (define (collatz-helper x k)
    ;condition 1: if x=1, append 1 onto list k
    (cond ((= x 1) (append k 1))
          ;condition 2: if number is odd, multiply x by 3 then add 1
          ;this can be seen as: 3x + 1
          ;uses recursion and calls append function
          ((= (remainder x 2) 1) (collatz-helper (+ 1(* x 3)) (append k x)))
          ;if number is even, divide x by 2
          ;this can be seen as: x ÷ 2
          ;uses recursion and calls append function
          ((= (remainder x 2) 0) (collatz-helper (/ x 2) (append k x)))
          ))
  ;check if variable passed in is already 1
  (cond ((= x 1) println x)
        ;if variable is not 1, call helper function
        (else (collatz-helper x (list)))))

;calls to collatz-list function, passing in number to x
(collatz-list 5)
(collatz-list 9)
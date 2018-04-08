#lang racket

(define (append lst x)
  (cond
    ((null? lst) (cons x '()))
    (else (cons (car lst) (append (cdr lst) x)))))

(define (collatz-list x)
  (define (collatz-helper x k)
    (cond ((= x 1) (append k 1))
          ((= (remainder x 2) 1) (collatz-helper (+ 1(* x 3)) (append k x)))
          ((= (remainder x 2) 0) (collatz-helper (/ x 2) (append k x)))
          ))
  (cond ((= x 1) println x)
        (else (collatz-helper x (list)))))


(collatz-list 5)
(collatz-list 9)
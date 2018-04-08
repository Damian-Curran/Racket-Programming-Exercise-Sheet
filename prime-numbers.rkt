#lang racket

;a function that uses brute-force to find if x is a prime number
(define (decide-prime x)
  ;decide-prime helper function 
  (define (prime-helper x k)
    ;check conditions
    ;condition 1: if x=k(x=current value of k), print true, success, x is a prime number
    (cond ((= x k) println"true")
          ;if remainder=0, print false, not a prime
          ((= (remainder x k) 0) println"false")
          (else
           ;else use recursion to pass in x(never changes) and k, on start of helper function, k will now be k=k+1
           (prime-helper x (+ k 1)))))
  ;initial check on x 
  ;if x=1 the print false, not a prime
  (cond ((= x 1) println"false")
	;if x=2, print true, it is a prime
        ((= x 2) println"true")
         (else
          ;else call helper function and pass in x and 2, use to calculate remainder
          (prime-helper x 2))))

;call function decide-prime and passes value to x
(decide-prime 3)
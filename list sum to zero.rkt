#lang racket

(define (sublsum x)
  (define (helper x k y j t)
    (cond ((null? (cdr x)) y)
          ((null? j) (helper (cdr x) 0 y (car x) (car x)))
          (else 
           (cond ((null? (cdr j))
                  (cond ((= 0 (+ k (car j))) (helper x 0 (cons t y) (cdr j) t)
                                             )
                        (else (helper x 0 y (cdr j) t))))
                 (else (helper x (+ (car j) k) y (cdr j) t))))
        ))
  (cond ((null? (cdr x)) "no combinations found")
        (else (helper (cdr (combinations x)) 0 '() '() '()))))

(sublsum (list 1 2 3 4 -5))
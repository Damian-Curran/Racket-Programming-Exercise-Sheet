#lang racket

;a function that takes a list (of integers) as input
;returns a list of sublists of it that sum to zero
(define (sublsum x)
  ;helper function which takes 4 lists and an integer
  (define (helper x k y j t)
    ;condition 1: check if next element in x is null, if true, print y
    ;y being a list which holds lists that sum to 0
    (cond ((null? (cdr x)) y)
          ;if list j is null, use recursion and pass in elements
          ;x = x - first element
          ;k = 0, k acts as the sum of the elements in each list
          ;y, no change
          ;j = first element in x, which is a list e.g j = (1 2 3 4)
          ;t = first elemnt in x, which is a list
          ((null? j) (helper (cdr x) 0 y (car x) (car x)))
          ;if j is not null
          (else
           ;condition 1: check if the next element in j is null
           ;acts as list of remaining elements to be added for the current list
           (cond ((null? (cdr j))
                  ;condition 1: if next element in j + k equals 0, add list t to y
                  (cond ((= 0 (+ k (car j))) (helper x 0 (cons t y) (cdr j) t) )
                        ;else set k to 0, recursivly call helper to get the next list in x
                        (else (helper x 0 y (cdr j) t))))
                 ;if next element in j is not null, add first element in j to total k
                 (else (helper x (+ (car j) k) y (cdr j) t))))
        ))
  ;check if list passed in is null, if so there are no combinations to find
  (cond ((null? (cdr x)) "no combinations found")
        ;else, pass in x as the possible combinations of list without the first element which is always and empty list '()
        ;also pass in counter which initialized as 0 and pass in 3 empty lists
        (else (helper (cdr (combinations x)) 0 '() '() '()))))

;call function sublsum with list provided
(sublsum (list 1 2 3 4 -5))
# Racket-Programming-Exercise-Sheet
Repository for an exercise sheet in racket, assigned in one of my modules, Theory of Algorithms.

There are a total of 10 exercises in the sheet.

## Exercise 1 prime-numbers

Write, from scratch, a function in Racket that uses a brute-force algorithm that takes
a single positive integer and return true if the number is a prime and false otherwise.
Call the function decide-prime.

## Exercise 2 collatz-list

Write, from scratch, a function in Racket that takes a positive integer n0 as input
and returns a list by recursively applying the following operation, starting with the
input number.

End the recursion when (or if) the number becomes 1. Call the function collatz-list.
So, collatz-list should return a list whose first element is n0, the second element
is n1, and so on.
```racket
  > (collatz-list 5)
  '(5 16 8 4 2 1)
  
  > (collatz-list 9)
  '(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
  
  > (collatz-list 2)
  '(2 1)
```

## Exercise 3 lcycle-rcycle

Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
list as input and returns the list cyclically shifted one place to the left. The second
is called rcycle, and it shifts the list cyclically shifted one place to the right.

```racket
> (lcycle (list 1 2 3 4 5))
'(2 3 4 5 1)

> (rcycle (list 1 2 3 4 5))
'(5 1 2 3 4)
```

## Exercise 4 list sum to zero

Write a function sublsum in Racket that takes a list (of integers) as input and returns
a list of sublists of it that sum to zero. For this problem, you can use the
combinations built-in function. Note the order of the sublists and their elements
doesn’t matter.

```racket
> (sublsum (list 1 2 3 4 -5))
'((2 3 -5) (-5 1 4))

> (sublsum (list 1 2 3 4 5))
'()
```

## Exercise 5 hamming-weight

Write a function hamming-weight in Racket that takes a list l as input and returns
the number of non-zero elements in it.

```racket
> (hamming-weight (list 1 0 1 0 1 1 1 0))
5
```

## Exercise 6 hamming-distance

Write a function hamming-distance in Racket that takes two lists and returns the
number of positions in which they differ.

```racket
> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
5
```

## Exercise 7 maj

Write a function maj in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where two or more
of x, y and z contain 1’s, and 0 otherwise.

```racket
> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 0 0 1 0 1 1 1)
```

## Exercise 8 chse

Write a function chse in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing the elements of y in
the positions where x is 1 and the elements of z otherwise.

## Exercise 9 sod2

Write a function sod2 in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where the number of
1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.

## Exercise 10 lstq

Write a function lstq in Racket that takes as arguments two lists l and m of equal
length and containing numbers. It should return d, the distance given by the sum of
the square residuals between the numbers in the lists.

## Using this repository
git clone https://github.com/Damian404/Racket-Programming-Exercise-Sheet.git

Install Racket: https://download.racket-lang.org/

Now you can double click the racket files to launch DrRacket and run the file from the DrRacket UI

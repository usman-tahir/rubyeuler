;; https://projecteuler.net/problem=6

(defun square (x) (* x x))

(defun sum (args) (apply #'+ args))

(defvar *square-of-sums* 
  (square (loop for x from 1 to 100 sum x)))

(defvar *sum-of-squares*
  (sum (loop for x from 1 to 100 collect (square x))))

(print (- *square-of-sums* *sum-of-squares*))
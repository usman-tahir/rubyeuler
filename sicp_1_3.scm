;;; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html
;;; exercise 1.3

(define (square x) (* x x))

(define (sum-two-squares x y)
  (+ (square x) (square y)))

(define (find-max x y z)
  (cond ((> x y) x)
        ((> x z) x)
        ((> y z) y)
        (else z)))

(define (find-mid x y z)
  (cond ((and (= (find-max x y z) x) (> y z)) y)
        ((and (= (find-max x y z) x) (< y z)) z)  
        ((and (= (find-max x y z) y) (> x z)) x)
        ((and (= (find-max x y z) y) (< x z)) z)
        ((and (= (find-max x y z) z) (> x y)) x)
        ((and (= (find-max x y z) z) (< x y)) y)))

(define (sum-larger-squares x y z)
  (sum-two-squares (find-max x y z) (find-mid x y z))) 

(sum-larger-squares 9 3 4)          
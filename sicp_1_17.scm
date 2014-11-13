;; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2

(define (fast-multiplication x y)
  (multi-iter x y 0))

(define (multi-iter x y counter)
  (cond ((= y 0) counter)
	((even? y) (multi-iter (double x) (halve y) counter))
	(else (multi-iter x (- y 1) (+ counter x)))))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (even? x)
  (= (remainder x 2) 0))


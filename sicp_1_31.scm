;; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_sec_1.3

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (inc n) (+ n 1))

(define (identity x) x)

(define (factorial x)
  (product identity 1 inc x))

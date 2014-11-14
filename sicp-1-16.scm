;; sicp problem 1.16

(define (square x)
  (* x x))

(define (even x)
  (= (remainder x 2) 0))

(define (fast-expt b n)
  (fast-expt-iter b n 1))

(define (fast-expt-iter b counter product)
  (cond ((= counter 0) product)
	((even counter) (fast-expt-iter (square b) (/ counter 2) product))
	(else (fast-expt-iter b (- counter 1) (* b product)))))


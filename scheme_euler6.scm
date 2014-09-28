;; https://projecteuler.net/problem=6

(define lower-bound 1)
(define upper-bound 100)

(define (succ x) (+ x 1))

(define (square x) (* x x))

(define accumulator1 0)
(define accumulator2 0)

(define (accumulate1 num)
  (set! accumulator1 (+ accumulator1 (square num))))

(define (accumulate2 num)
  (set! accumulator2 (+ accumulator2 num)))

(define (square-sums counter1 limit1)
  (if (> counter1 limit1) (eval accumulator1)
      (begin
        (accumulate1 counter1)
        (square-sums (succ counter1) limit1))))

(define (sum-squares counter2 limit2)
  (if (> counter2 limit2) (eval (square accumulator2))
      (begin
        (accumulate2 counter2)
        (sum-squares (succ counter2) limit2))))

(- (sum-squares lower-bound upper-bound) (square-sums lower-bound upper-bound))

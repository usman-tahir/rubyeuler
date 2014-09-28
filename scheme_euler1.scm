;; https://projecteuler.net/problem=1

(define (check-value num)
  (cond ((= (modulo num 5) 0) num)
        ((= (modulo num 3) 0) num)
        (else 0)))

(define accumulator 0)

(define (accumulate num)
  (set! accumulator (+ accumulator (check-value num))))

(let iteration ((i 0))
  (if (= i 1000) (display accumulator)
      (begin
        (accumulate i)
        (iteration (+ i 1)))))

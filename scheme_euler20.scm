;; https://projecteuler.net/problem=20

(define (digits n . args)
  (let ((b (if (null? args) 10 (car args))))
    (let loop ((n n) (d '()))
      (if (zero? n) d
          (loop (quotient n b)
                (cons (modulo n b) d))))))

(define (factorial number)
  (if (= number 0)
      1
      (* number (factorial (- number 1)))))

(define (sum digit-list)
  (if (null? digit-list)
      0
      (+ (car digit-list) (sum (cdr digit-list)))))

(sum (digits (factorial 100)))

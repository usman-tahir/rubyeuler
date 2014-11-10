;; http://rosettacode.org/wiki/Averages/Arithmetic_mean

(define (arith-mean list)
  (if (null? list)
      #f
      (/ (apply + list) (length list))))


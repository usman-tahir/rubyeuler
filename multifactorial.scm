;; http://rosettacode.org/wiki/Multifactorial

(define (multifactorial number degree)
  (if (<= number 1)
      1
      (* number (multifactorial (- number degree) degree))))


;; https://projecteuler.net/problem=2

(defun fSum (l acc f p)
  (cond ((> f l) (print acc))
        ((equal 0 (mod f 2)) (fSum l (+ f acc) (+ f p) f))
        (t (fSum l acc (+ f p) f))))

(defun fSumWrapper (l)
  (fSum l 0 2 1))

(fSumWrapper 4000000)

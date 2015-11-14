;; https://projecteuler.net/problem=2

(defun f-sum (l acc f p)
  (cond ((> f l) (print acc))
        ((equal 0 (mod f 2)) (f-sum l (+ f acc) (+ f p) f))
        (t (f-sum l acc (+ f p) f))))

(defun f-sum-wrapper (l)
  (f-sum l 0 2 1))

(f-sum-wrapper 4000000)

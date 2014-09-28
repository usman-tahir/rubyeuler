;; recursive factorial in scheme

(define (factorial number)
  (if (= number 0)
  	  1
  		(* number (factorial (- number 1)))))
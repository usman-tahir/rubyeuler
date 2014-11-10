(define (factorial number)
  (factorial-iterator 1 1 number))

(define (factorial-iterator product counter max-count)
  (if (> counter max-count)
      product
      (factorial-iterator (* counter product)
			  (+ counter 1)
			  max-count)))

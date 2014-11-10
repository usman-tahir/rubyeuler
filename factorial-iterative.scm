(define (factorial number)
  (factorial-iterator 1 1 number))

(define (factorial-iterator product accumulator max-count)
  (if (> accumulator max-count)
      product
      (factorial-iterator (* accumulator product)
			  (+ accumulator 1)
			  max-count)))

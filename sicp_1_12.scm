;; sicp exercise 1.12:
;; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2

(define (pascals-element row column)
  (cond ((= column 0) 1)
	((= column row) 1)
	(else (+ (pascals-element (- row 1) (- column 1))
		 (pascals-element (- row 1) column)))))


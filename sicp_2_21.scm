;; sicp exercise 2.21 in scheme

(define (square-list items)
  (if (null? items)
    nil
    (cons (* (car items) (car items))
      (square-list (cdr items)))))

(define (square-list items)
  (map (lambda (x) (* x x)) items))

(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))
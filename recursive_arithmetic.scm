(define (iszero x)
  (= 0 x))

(define (succ x)
  (+ x 1))

(define (pred x)
  (- x 1))

(define (add x y)
  (if (iszero y)
      (eval x)
      (add (succ x) (pred y))))

(define (subtract x y)
  (if (iszero y)
      (eval x)
      (subtract (pred x) (pred y))))

(define (multiply x y)
  (cond ((iszero y) (eval y))
        ((iszero (pred y)) (eval x))
        (else (add (multiply (eval x) (pred y)) x))))

(define (divide x y)
  (cond ((iszero y) (eval "div/0"))
        ((< (subtract x y) y) (eval 1))
        (else (succ (divide (subtract x y) y)))))

(define (modulus x y)
  (subtract x (multiply y (divide x y))))

(define (power x y)
  (if (iszero y)
      (eval 1)
      (multiply x (power x (pred y)))))
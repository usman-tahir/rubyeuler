(defun fizzbuzz ()
  (loop for x from 1 to 100 do
    (cond ((equal 0 (mod x 15)) (print 'FizzBuzz))
  	  ((equal 0 (mod x 5)) (print 'Buzz))
	  ((equal 0 (mod x 3)) (print 'Fizz))
	  (t (print x)))))


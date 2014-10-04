(defvar *accumulator* 0)

(defun sum-multiples ()
  (loop for i from 1 to 999 do
    (cond ((equal 0 (mod i 15)) (setf *accumulator* (+ i *accumulator*)))
	  ((equal 0 (mod i 5)) (setf *accumulator* (+ i *accumulator*)))
	  ((equal 0 (mod i 3)) (setf *accumulator* (+ i *accumulator*)))
	  (t ()))))

(sum-multiples)
(print *accumulator*)

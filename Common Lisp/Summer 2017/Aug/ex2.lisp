(defstruct name
  first
  (middle nil)
  last)


(setf b (make-name :first 'Barney
		   :last 'Rubble))

(name-first b)
(name-middle b)
(name-last b)

(name-p b)

(setf (name-middle b) 'Q)
b

(defparameter x 1)

(case x
  (1 10)
  (2 20))

(typecase x
  (number (abs x))
  (list (length x)))

(ecase x
  (1 10)
  (2 20))

(etypecase x
  (number (abs x))
  (list (length x)))

(let* ((x 6)
       (y (* x x)))
  (+ x y))

(dolist (i '(1 2 3))
  (print i))

(dolist (i '(1 2 3) 'done)
  (print i))

(defun length1 (list)
       (let ((len 0))
	 (dolist (element list)
	   (incf len))
	 len))

(length1 '(1 2 3))

(defun length1.1 (list)
  (let ((len 0))
    (dolist (element list len)
      (incf len))))

(length1.1 '(1 2 3))

(defun length2 (list)
  (let ((len 0))
    (mapc #'(lambda (element)
	      (incf len))
	  list)
    len))

(length2 '(1 2 3))

(dotimes (i 10)
  (print i))

(defun length4 (list)
  (loop for element in list count t))

(length4 '(1 2 3))

(defun length5 (list)
  (loop for element in list summing 1))

(length5 '(1 2 3))

(defun length6 (list)
  (loop with len = 0
     until (null list)
     for element = (pop list)
     do (incf len)
     finally (return len)))

(length6 '(1 2 3))

(defun length7 (list)
  (labels ((true (x) t))
    (count-if #'true list)))

(length7 '(1 2 3))









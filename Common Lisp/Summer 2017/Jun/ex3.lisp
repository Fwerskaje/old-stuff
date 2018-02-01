(defun primep (number)
  (when (> number 1)
    (loop for fac from 2 to (isqrt number) never (zerop (mod number fac)))))

(defun next-prime (number)
  (loop for n from number when (primep n) return n))

(do ((p (next-prime 0) (next-prime (1+ p))))
    ((> p 19))
  (format t "~d " p))

(defmacro do-primes ((var start end) &body body)
  `(do ((,var (next-prime ,start) (next-prime (1+ ,var))))
       ((> ,var ,end))
     ,@body))

(defun ]> (var &rest fun-list)
  (mapcar (lambda (function) (setf var (funcall function var))) fun-list)
  var)

(defmacro back-eval (expr)
  `(,(car (last expr)) ,@(cdr (reverse expr))))




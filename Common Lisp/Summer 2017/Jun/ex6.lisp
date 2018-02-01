(defun show-value (key hash-table)
  (multiple-value-bind (value present) (gethash key hash-table)
			  (if present
			      (format nil "Значение ~a присутствует в таблице" value)
			      (format nil "Значение равно ~a, ибо ключ не найден" value))))

(defun put-random-numbers-into-hash (hash n)
  (dotimes (i n)
    (let ((key (make-symbol (format nil "~aSYMB" i)))
	  (value (random 100)))
      (setf (gethash key hash) value))))

(defun print-hash (hash)
  (maphash #'(lambda (k v) (format t " ~a => ~a;~%" k v)) hash))
			      
			 

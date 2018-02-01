(defun print-hash (hash)
  (maphash (lambda (key value) (format t "~a => ~a~%" key value)) hash))

(defun add-to-hash (hash key value)
  (setf (gethash key hash) value))

 
      
    




(defun euc (m n)
  (let ((r (mod m n)))
    (if (zerop r)
	n
	(euc n r))))

(defun binary-search (list item)
  (let ((low 0) (high (1- (length list))))
    (loop
       (when (> low high) (return))
       (let* ((mid (+ low high)) (guess (nth mid list)))
	 (cond
	   ((equal guess item) (return mid))
	   ((> guess item) (setf high (1- mid)))
	   (t (setf low (1+ mid))))))))

(defun find-smallest-rec (arr smallest)
  (unless (cdr arr)
    (return-from find-smallest-rec smallest))
  (let ((guess (car arr)))
    (if (< guess smallest)
	(find-smallest-rec (cdr arr) guess)
	(find-smallest-rec (cdr arr) smallest))))

(defun find-smallest (arr)
  (find-smallest-rec arr (car arr)))
  
(defun selection-sort-rc (arr new-arr)
  (unless (cdr arr)
    (return-from selection-sort-rc (reverse new-arr)))
  (let ((smallest (find-smallest arr)))
    (setf new-arr (append (list smallest) new-arr))
    (setf arr (remove smallest arr :count 1))
    (selection-sort-rc arr new-arr)))

(defun selection-sort (arr)
  (selection-sort-rc arr nil))

(defun test-sort (function)
  (time (funcall function (mapcar (lambda (n) (random 100)) (make-list 1000)))))

(defun quick-sort (arr)
  (if (< (length arr) 2)
      arr
      (let* ((pivot (car arr))
	     (less (remove-if
		    (lambda (n) (> n pivot)) (cdr arr)))
	     (greater (remove-if
		       (lambda (n) (<= n pivot)) (cdr arr))))
	(append (quick-sort less)
		(list pivot) (quick-sort greater)))))






  

(defun convert-input () 
  (flet ((convert (base number) (write-to-string number :base base)))   
    (macrolet ((check-base (base)
		 `(unless (< 1 ,base 37)
		    (format t "BASE ERROR: ~a~%" ,base)
		    (return-from convert-input)))
	       (check-ex (num)
		 `(unless (numberp ,num)
		    (return-from convert-input)))
	       (checker (nm)
		 `(unless (check-ex ,nm)
		    (check-base ,nm))))
      (format t "ВВЕДИТЕ ОСНОВАНИЕ ЧИСЛА: ")
      (finish-output)
      (let ((b-from (read)))
	(checker b-from)
	(format t "ВВЕДИТЕ ОСНОВАНИЕ ДЛЯ КОНВЕРТАЦИИ: ")
	 (finish-output)
	(let ((b-to (read)))
	  (checker b-to)
	  (format t "ВВЕДИТЕ ЧИСЛО: ")
	   (finish-output)
	  (let ((num (parse-integer (read-line) :radix b-from :junk-allowed t)))
	    (if num
	    (progn
	      (format t "RESULT: ~a~%" (convert b-to num)) t (finish-output))
	    (progn (format t "ERROR: ЧИСЛО НЕ СООТВЕТСТВУЕТ ЗАДАННОМУ ОСНОВАНИЮ") (finish-output)))))))))

(defun convert-repl ()
  (loop
     (unless (convert-input)
       (format t "ВЫЙТИ?")
       (finish-output)
       (when (yes-or-no-p)
	 (return)))))

(convert-repl)



    


	
	
    
			 
  

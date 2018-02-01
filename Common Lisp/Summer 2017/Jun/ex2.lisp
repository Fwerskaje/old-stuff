(dolist (x '(1 2 3)) (print x))

(dolist (x '(1 2 3)) (print x) (if (evenp x) (return)))

(dotimes (i 4) (print i))

(dotimes (i 10) (print i) (if (= i 5) (return)))

(dotimes (x 20)
  (dotimes (y 20)
    (format t "~3d " (* (1+ x) (1+ y))))
  (format t "~%"))

(do ((n 0 (1+ n))
     (cur 0 next)
     (next 1 (+ cur next)))
    ((= 10 n) cur))


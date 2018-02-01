(defstruct rectangle
  height width)

(defstruct circle
  radius)

(defun area (x)
  (cond
    ((rectangle-p x) (* (rectangle-height x) (rectangle-width x)))
    ((circle-p x) (* pi (expt (circle-radius x) 2)))))

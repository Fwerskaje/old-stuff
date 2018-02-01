(defclass rectangle ()
  (height width))

(defclass circle ()
  (radius))

(defmethod area ((x rectangle))
  (* (slot-value x 'height) (slot-value x 'width)))

(defmethod area ((x circle))
  (* pi (expt (slot-value x 'radius)) 2))

(defmethod print-circle ((x circle))
  (format t "((R ~a))" (slot-value x 'radius)))

(defclass colored ()
  (color))

(defclass colored-circle (circle colored)
  ())

(defmethod print-circle ((x colored-circle))
  (format t "((R ~a C ~a))" (slot-value x 'radius) (slot-value x 'color)))

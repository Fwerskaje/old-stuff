(def x 10)
(if (= x 10)
  (print-str "Десять")
  (print-str "Не десять"))
(when (= x 10)
  (print-str "Десять"))
(case x
  10 (print-str "Десять")
  11 (print-str "Одиннадцать")
  (print-str "Другое число"))
(cond
  (< x 10) (print-str "x меньше 10")
  (> x 10) (print-str "x больше 10")
  (= x 10) (print-str "Это десять"))

(defn average [numbers]
  (/ (apply + numbers) (count numbers)))

(average [1 4 8 8])

(read-string "42")
(read-string "(+ 1 2)")
(type (read-string "KEK"))
(pr-str [1 2 3])

"Hello, world!"

"Multiple line
string"

(class \c)

\o41

(println "HAH\tabTAB")

(def person {:name "Sanda Cruz"
             :city "Portlang, ME"})

(:city person)

0xff
2r010101010101010100

(class #"(p|h)ail")
(re-seq #"(\d+)-(\d+)" "1-3")


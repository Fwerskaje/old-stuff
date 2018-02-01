(require '[clojure.string :as str])
"abc"
(count "abc")
(.indexOf "abc" "b")
(str 1)
(str 1 3 4 8 8 "-" nil)
(format "%s kekk" 1488)
(subs "qwertyuiop" 2)

(str/join ", " [1 2 3 4])
(str/split "1, 2, 3, 4, 5" #", ")
(str/split "1 2 3 4 5" #" ")
(str/upper-case "doc")

(re-find #"a+" "aaaaaabccaaaaaaccaaa")
(re-seq #"a+" "aaaaaabccaaaaaaccaaa")
(re-seq #"kek" "kekekkeekkkkeekkekekeke")
(re-seq #"ke+" "kkeeekkekeekeeekkkkkekk")
(str/replace "dog cat horse" "cat" "kek")
(str/replace "dog cat horse" #"[act]+" str/upper-case)
(str/replace "dog cat horse" #"[dgo]" str/upper-case)
(str/replace "dog cat horse" #"cat" str/upper-case)
(str/replace "dog cat horse" #"cat" #(apply str (reverse %)))



(ns autism.kek
  (:require [clojure.string :as str])
  (:use [clojure.stirng]))

(defn keklainen [x]
  (if (string? x)
    (print-str x " " "Кековелительнэ!")
    (print-str "Числэ~")))

(autism.kek/keklainen 10)
autism.kek/keklainen
clojure.string/join

(require '[clojure.string :as str])
(str/join "," [1 2 3 4 5])
(require '[clojure.string :refer [join]])
(join "." [1 2 3 4])

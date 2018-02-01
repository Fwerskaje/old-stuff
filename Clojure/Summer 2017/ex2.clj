(ns match-test)
(require '[clojure.core.match :refer [match]])

(defn passwd [passwd]
  (match passwd
         [1 4 8 8] "CORRECT!"
         [_ _ _ _] "ERROR"))

(passwd [2 2 1 2])
(passwd [1 4 8 8])

(defn check-desk [desk]
  (match desk
         [[0 0 0]
          [_ _ _]
          [_ _ _]] "WIN!"
         [[_ _ _]
          [0 0 0]
          [_ _ _]] "WIN!"
         [[_ _ _]
          [_ _ _]
          [0 0 0]] "WIN!"
         [[0 _ _]
          [_ 0 _]
          [_ _ 0]] "WIN!"
         [[_ _ 0]
          [_ 0 _]
          [0 _ _]] "WIN!"
         :else nil))

(check-desk [[1 0 1]
             [0 1 1]
             [1 1 0]])

(check-desk [[0 1 1]
             [1 0 1]
             [1 1 0]])

(defm 
          
                 
         
         

(ns word-count)

(defn words [phrase]
  (clojure.string/split phrase #"\s+")
  )

(defn clean [phrase]
  (clojure.string/replace
    phrase
    #"[^A-Z0-9a-z ]"
    "")
    )

(defn word-count [phrase]
     (->> phrase
       (clean)
       (words)
       (map clojure.string/lower-case)
       (frequencies)
       ))

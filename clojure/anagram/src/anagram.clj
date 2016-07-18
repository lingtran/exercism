(ns anagram
  (:require [clojure.string :refer [lower-case]]))

(defn anagram? [word possibility]
  (let [word (lower-case word)
  poss (lower-case possibility)]
  (and
    (= (sort word)
      (sort poss)
    (not (= word poss))))
    ))

(defn anagrams-for [word possibilities]
  (filter (partial anagram? (lower-case word)) possibilities)
  )

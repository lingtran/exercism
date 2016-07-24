(ns bob)

(defn numbers? [message]
  (not (re-find #"[A-Za-z]" message))
)

(defn shouting? [message]
  (and ( = (clojure.string/upper-case message) message) (not (numbers? message)))
)

(defn question? [message]
  (= (last message) \?)
)

(defn response-for [message]
  (cond
    (clojure.string/blank? message) "Fine. Be that way!"
    (shouting? message) "Whoa, chill out!"
    (question? message) "Sure."
    :else "Whatever."
  )
)

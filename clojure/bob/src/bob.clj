(ns bob)

(defn response-for [something]
  (if (clojure.string/blank? something)
    "Fine. Be that way!"
    ( if (something (= "WHAT OUT!"))
        "Whoa, chill out!"
        "Whatever.")))

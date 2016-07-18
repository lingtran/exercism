(ns hello-world)

; (def hello
;   (fn [arg]
;     (println arg)))
; 
;
; (defn hello
;   ([] "Hello, World!")
;   ([arg] (str "Hello, " arg "!"))
;   )

(defn hello
  ([] (hello "World"))
  ([name] (str "Hello, " name "!"))
  )

;;
;; 5-1
(defun MY-BUTLAST (lst)
  "remove last element"
  (reverse (cdr (reverse lst))))

;; 5-2
(defun my-complement-set (x y)
  "my-complement-set"
  (set-exclusive-or x y))

;; 5-3
(defun set-equal (x y)
  "set-equal"
  (if (set-exclusive-or x y) 'NIL 'T))
;;(and (subsetp x y) (subsetp y x))

;; 5-4
(defparameter *books*
  '((War-and-peace . Leo-Tolstoy) (Oliver-twist . Charles-dickens)
    (Tom-sawyer . Mark-twain) (Kidnapped . Robert-louis-Stevenson)
    (candide . voltaire)))

(defun WHO-WROTE (x)
  "WHO-WROTE"
  (rest (assoc x *book*)))

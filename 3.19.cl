;;
;; Header
;; Date: March 19, 2019
;; Author: hjh
;; Description: Condition (Á¶°Ç)
;;

(defun myAbs (x)
  "returning the absolute value of x"
  (if(> 0 x) (- x) x))

(defun compare (x y)
  "comparing two numbers x and y"
  (cond ((= x y) "x and y are the same")
        ((> x y) "x is greater than y")
        (t "y is greater than x")))
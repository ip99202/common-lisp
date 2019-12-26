;;
;;test
;;

(defun func2 (x y)
  "calculate function"
  (if (and (numberp x) (numberp y)) 
       (list 'claculated 'value '= (+ (* x 4) (* (expt y 3) 2))) 
       "your inputs are not numbers"))

(defun func3 (x y)
   (cond ((and (numberp x) (numberp y)) (list 'calculated 'value '= (+ (* 4 x) (* 2 (* y (* y y)))) ) )
         (t '(Your inputs are not numbers))))

(defun testargument()
  "when there are no argument"
  (list 'a 'b))

(defun listvariable (x y)
  "two arguments in the list"
  (list x y))

(defun average (x y)
  "return the average of x and y"
  (let ((sum 0)
        (total (+ x y)))
    (/ total 2.0)))

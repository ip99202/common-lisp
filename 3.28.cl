;;
;; second project
;;
(defun play(x y)
  "play rock scissors paper"
  (cond ((equal x y) 'tie)
        ((or 
          (and (equal x 'rock) (equal y 'scissors) 'first-win)
          (and (equal x 'scissors) (equal y 'paper) 'first-win)
          (and (equal x 'paper) (equal y 'rock) 'first-win)))
        (t 'second-win)))

(defun picky-multiply(x y)
  "picky-multiply"
  (when (oddp x) (incf x))
  (when (evenp y) (incf y))
  (* x y))

(defun throw-die()
  "throw-die random 1-6"
  (+ (random 6) 1))
  
(defun throw-dice()
  "throw-two-dice random 1-6"
  (list (throw-die) (throw-die)))

(defun Einstein(x)
  "compute Einstein's E = MC2"
  (let ((c 300000.0))
    (* x (* c c))))

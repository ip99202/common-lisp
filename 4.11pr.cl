;;
;;pr3
;;
;; 4-1
(defun fib (n)
  (do ((cnt 0 (+ cnt 1))
       (i 1 j)
       (j 1 (+ i j)))
      ((equal cnt n) i)))

;; 4-2
(defun count-slices (lst)
  "Make my own length function"
  (let ((res 0))
    (do ((cnt 0 (+ cnt 1)))
        ((null lst) (return res)) (pop lst) (setf res (+ res 1)))))

;; 4-3
(defun FIND-LARGEST (lst)
  "Find largest number"
  (do* ((cnt (length lst) (- cnt 1))
        (max -100))
       ((= cnt 0) (return max)) (when (> (first lst) max) (setf max (first lst))) (pop lst)))

;; 4-4
(defun first-non-integer (lst)
  "Find non-integer"
  (do* ((cnt (length lst) (- cnt 1)))
       ((= cnt 0) nil) (if (numberp (first lst)) (pop lst) (return (first lst)))))
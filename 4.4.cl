;;
;; practice 3
;; 
(defun FIND-LARGEST (lst)
  "largest number"
  (let ((max -100))
    (dolist (i lst max)
      (when (> i max) (setf max i)))))

(defun FIND-SMALLEST (lst)
  "smallset number"
  (let ((les 9999999999))
    (dolist (i lst les)
      (when (< i les) (setf les i)))))

(defun size-range (lst)
  "return size range"
  (let* ((x (FIND-LARGEST lst))
         (y (FIND-SMALLEST lst))
         (range (- x y)))
    (list 'THE 'SIZE 'OF 'RANGE 'IS range)))

(defun my-adder (lst)
  "add numbers"
  (let ((res 0))
    (dotimes (i lst res)
      (setf res (+ res i 1)))))
;;
;;
(defun it-intersection (x y)
  (let ((result-set nil))
    (dolist (element x (reverse result-set))
      (when (member element y)
        (push element result-set)))))

(defun launch (n)
  (do ((cnt n (- cnt 1)))
      ((= cnt 0) (format t "Blast off!"))
    (format t "~2D..." cnt)))

(defun ffo-with-do* (ListOfNumbers)
  (do* ((x ListOfNumbers (cdr x))
        (e (car x) (car x)))
       ((null x) nil)
    (if (oddp e) (return e))))

(defun read-a-number ()
  (do ((answer nil))
      (nil)
    (format t "~&Please type a number: ")
    (setf answer (read))
    (if (numberp answer)
        (return answer))
    (format t "~&Sorry, ~S is not a number. Try again." answer)))


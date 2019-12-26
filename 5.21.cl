;;
;;
(defvar *total-glasses* 0)

(defvar *Things*
    '((object1 large green shiny cube)
      (object2 small red dull metal cube)))


(defun sell (n)
  (setf *total-glasses* (+ *total-glasses* n))
  (format t "~&Total ~S glasses." *total-glasses*))


(defun rename (Obj NewName) ;; makeMove in tic-tac-toe
  (setf (car (assoc Obj *Things*)) NewName))

(defun addProperty (Obj Property)
  (nconc (assoc Obj *Things*) (list Property)))
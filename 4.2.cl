;;
;; Header
;;

;; Constants
(defconstant G 9.8)

;; Global Variables
(defvar *Total* 0)

;; Main Function
(defun Double (n)
  "doubles n"
  (* n 2))

(defun price-change (old new)
  "returning the proportion to percentage"
  (let* ((diff (- new old))
         (proportion (/ diff old))
         (percentage (* proportion 100.0)))
    (list 'widgets 'changed 'by percentage 'percent)))

(defun MyCount (n)
  "usage of dotimes"
  (dotimes (i n n)
    (format t "~&I is ~S and ~3D." i i)))

(defun rose (Colors)
  "usage of dolist"
  (dolist (j Colors 'flowers)
    (format t "~&Roses are ~S." j)))

(defun find-first-odd (list-of-numbers)
  (dolist (e list-of-numbers)
    (format t "~&Testing ~S..." e)
    (when (oddp e)
      (format t "found an odd number.")
      (return e))))


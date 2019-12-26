;;
;; 6/11
;;

(defparameter *Hist-Array* nil)

(defparameter *Total-Points* 0)

(defun new-histogram (x)
  (setf *Hist-Array* (make-array x :initial-element 0))
  (setf *Total-Points* 0) t)

(defun record-value (x)
  (setf (aref *Hist-Array* x) (+ 1 (aref *Hist-Array* x)))
  (incf *Total-Points* 1))

(defun print-histogram ()
  (dotimes (i (length *Hist-Array*))
    (format t "~%~s [ ~s ] " i (aref *Hist-Array* i))
    (dotimes (j (aref *Hist-Array* i)) (format t "*")))
  (format t "~%~s Total" *Total-Points*))

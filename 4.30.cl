
(defvar *words*
    '((one un) (two deux) (three trois) (four quatre)))

(defun translate (x)
  (second (assoc x *words*)))

(defun my-assoc (key table)
  (find-if #'(lambda (entry) (equalp key (first entry))) table))



(defun half (n) (* n 0.5))

(defun average (x y) (+ (half x) (half y)))
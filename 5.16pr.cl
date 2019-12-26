;;
;;
;; 8-1
(defun my-append (alist blist)
  (cond ((equal (car alist) nil) blist)
        ((my-append (reverse (cdr (reverse alist))) (cons (car (reverse alist)) blist)))))

;; 8-2
(defun interleave (alist blist)
  (cond ((null alist) nil)
        ((null blist) nil)
        (t (append (list (car alist) (car blist)) (INTERLEAVE (cdr alist) (cdr blist))))))

;; 8-3
(defun MY-DRAW-LINE (x)
  (cond ((= x 1) (format t "*"))
        (t (format t "*") (MY-DRAW-LINE (decf x 1)))))

(defun MY-DRAW-BOX (x y)
  (cond ((= y 1) (MY-DRAW-LINE x))
        (t (MY-DRAW-LINE x) (format t "~%") (MY-DRAW-BOX x (decf y 1)))))

;; 8-4
(defun dot-prin1 (x)
   (cond ((atom x) (format t "~S" x))
  (t (format t "(") (dot-prin1 (car x)) (format t " . ") (dot-prin1 (cdr x)) (format t ")"))))
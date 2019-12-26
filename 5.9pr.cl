;;
;;
;; 7-1
(defun total-length (lst)
  (length (reduce #'append lst)))

;; 7-2
(defun flip (lst)
  (mapcar #'(lambda (x) (if (equal x 'up) 'down 'up)) lst))

;; 7-3
(defun my-member (x lst)
  (cond ((equal x (car lst)) lst)
        ((equal (rest lst) nil) nil)
        (t (my-member x (rest lst)))))

;; 7-4
(defun merge-list (alist blist)
  (let ((res '()))
    (cond ((and (equal alist nil) (equal blist nil)) res)
          ((equal alist nil) (setf res (append res blist)) (merge-list (nil nil)))
          ((equal blist nil) (setf res (append res alist)) (merge-list (nil nil)))
          ((> (car alist) (car blist)) (setf res (append res (car blist))) (merge-list (alist (rest blist))))
          ((< (car alist) (car blist)) (setf res (append res (car alist))) (merge-list ((rest alist) blist)))
          (t (setf res (append res (car alist))) (merge-list ((rest alist) blist))))))

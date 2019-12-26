;;
;; 5/2
;;

(defvar *rooms*
    '((front-stairs (north upstairs-bedroom) (south living-room))
      (upstairs-bedroom (west library) (south front-stairs))
      (library (east upstairs-bedroom) (south back-stairs))
      (back-stairs (north library) (south downstairs-bedroom))
      (downstairs-bedroom (east dining-room) (north back-stairs))
      (dining-room (west downstairs-bedroom) (north living-room) (east pantry))
      (pantry (west dining-room) (north kitchen))
      (living-room (south dining-room) (north front-stairs) (east kitchen))
      (kitchen (south pantry) (west living-room))))

(defparameter *loc*
    'library)

;; 1
(defun choices (x)
  (rest (assoc x *rooms*)))

;; 2
(defun look (x y)
  (second(assoc x (choices y))))

;; 3
(defun upstairsp (x)
  (if (or (equal x 'upstairs-bedroom) (equal x 'library)) t nil))

;; 4
(defun onstairsp (x)
  (if (or (equal x 'front-stairs) (equal x 'back-stairs)) t nil))

;; 5
(defun where ()
  (cond ((upstairsp *loc*) (list 'robbie 'is 'upstairs (if (onstairsp *loc*) 'on 'in) 'the *loc*))
        (t (list 'robbie 'is 'downstairs (if (onstairsp *loc*) 'on 'in) 'the *loc*))))

;; 6
(defun move (x)
  (cond ((look x *loc*) (defparameter *loc* (look x *loc*)) (where))
        (t 'error)))

;; 7
(defun royal-we (x)
  (subst 'we 'i x))

;; 8
(defun swap-first-last (x)
  (let* ((a (reverse (rest x)))
           (b (reverse (rest a))))
    (cons (first a)
          (append b (list (first x))))))


    
    
    
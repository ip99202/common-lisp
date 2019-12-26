;;
;;
;;
(defun anyoddp (x)
  (cond ((null x) nil)
        ((oddp (first x)) t)
        (t (anyoddp (rest x)))))

(defun fact (n)
  (cond ((zerop n) 1)
        (t (* n (fact (- n 1))))))

(defun count-slices (loaf)
  (cond ((null loaf) 0)
        (t (+ 1 (count-slices (rest loaf))))))

(defun find-first-atom (x)
  (cond ((atom x) x)
        (t (find-first-atom (first x)))))

(defun laugh (n)
  (cond ((zerop n) nil)
        (t (cons 'ha (laugh (- n 1))))))

(defun my-nth (n x)
  (cond ((zerop n) (first x))
        (t (my-nth (- n 1) (rest x)))))

(defun extract-symbols (x)
  (cond ((null x) nil)
        ((symbolp (first x)) (cons (first x) (extract-symbols (rest x))))
        (t (extract-symbols (rest x)))))

(defun fib (n)
  (cond ((equal n 0) 1)
        ((equal n 1) 1)
        (t (+ (fib (- n 1))
              (fib (- n 2))))))

(defun find-number (x)
  "find any first number in an irregularly shaped list"
  (cond ((numberp x) x)
        ((atom x) nil)
        (t (or (find-number (car x))
               (find-number (cdr x))))))

(defun my-mapcar (fn x)
  (cond ((null x) nil)
        (t (cons (funcall fn (first x))
                 (my-mapcar fn (rest x))))))


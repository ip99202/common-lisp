;;
;;

(defvar *male-names*
  '(john kim richard fred george))

(defvar *female-names*
  '(jane mary wanda barbara kim))

(defvar *Professions* 
    '((lawyer mary) (dentist fred)))


(defun foo (x &optional y) 
  "usage of optional"
  (list x y))

(defun make-sundae (name &key (size 'regular)
                         (ice-cream 'vanilla)
                         nuts)
  "usage of key"
  (list name size ice-cream nuts))
;;(make-sundae 'MyIce)
;;(MYICE REGULAR VANILLA NIL)
;;(make-sundae 'MyIce :size 'small :nuts 'pecan)
;;(MYICE SMALL VANILLA PECAN)

(defun my-progn (&rest x) 
  "usage of rest"
  ;;(car (last x)))
  (print x))

(defun average (&rest Args
                      &aux (Len (length Args)))
    "usage of aux"
  (/ (reduce #'+ Args) Len))
;; reduce함수는 함수를 입력인자로 받는다 +가 함수라는 것을 알리기 위해 #'를 쓴다

;;(defun average2 (&rest Args)
;; (let* ((Len (length Args)))
;;    (/ (reduce #'+ Args) Len)))

(defun beforep(x y l)
  "returns true if X appears before Y in L"
  (and (member y (member x l)) t))
  ;;(member y (member x l)))

(defun gender-ambiguous-names ()
  (intersection *male-names* *female-names*)) ;;교집합

(defun uniquely-male-names ()
  (set-difference *male-names* *female-names*)) ;;차집합

(defun malep (name)
  "is the name male?"
  (and (member name *male-names*) t))


(defun find-someone (x)
  (second (assoc x *Professions*)))


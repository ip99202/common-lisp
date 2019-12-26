;;
;; Header
;; 두번째 LISP실습
;; func1: 두 수를 비교하는 함수
;; func2: 자연수이고 홀수이면 제곱/ 음수이고 홀수이면 곱하기 2/ 나머지는 2로 나눔
;; func3: 4x+2y^3을 하는 함수 
;; func4: 0이 몇번째 나오는지 판별하는 함수
;;
(defun func1(x y)
  "which is bigger?"
  (if (> x y) (list 'first  'is  'bigger  'than  'second) (list 'first  'is  'not 'bigger  'than  'second)))

(defun func2(x)
  "strange function"
  (cond ((and (oddp x) (> x 0)) (* x x))
        ((and (oddp x) (< x 0)) (* x 2))
        (t (/ x 2))))

(defun func3(x y)
  "calculate function"
  (if (and (numberp x) (numberp y)) 
       (list 'claculated 'value '= (+ (* x 4) (* (expt y 3) 2))) 
       "your inputs are not numbers"))

(defun func4(lst)
  "where the first zero appears?"
  (cond ((zerop (first lst)) 'first)
        ((zerop (second lst)) 'second)
        ((zerop (third lst)) 'third)
        (t 'none)))
  


;;
;; Header
;; �ι�° LISP�ǽ�
;; func1: �� ���� ���ϴ� �Լ�
;; func2: �ڿ����̰� Ȧ���̸� ����/ �����̰� Ȧ���̸� ���ϱ� 2/ �������� 2�� ����
;; func3: 4x+2y^3�� �ϴ� �Լ� 
;; func4: 0�� ���° �������� �Ǻ��ϴ� �Լ�
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
  


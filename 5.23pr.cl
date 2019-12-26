;;
;;
;; 9-1
(defun cookie-monster ()
  (format t "~%Give me cookie!!~%Cookie? ")
  (let ((x (read)))
    (cond ((equal x 'cookie) (format t "~%Thank You!...Munch munch mumch... BURP")) 
          (t (format t "~%No want ~S" x) (cookie-monster)))))

;; 9-2
(defun compute-pay ()
  (format t "What is the hourly wage? ")
  (let ((x (read)))
    (format t "How many hours worked? ")
    (let ((y (read)))
      (format t "The worker earned ~S dollars." (* x y)))))

;; 9-3
(defun SAVE-SCORE (score)
    (with-open-file (stream "Score.txt" 
                                  :direction :output :if-exists :append :if-does-not-exist :create)
       (format stream "~S~%" score) ; �Է¹��� object�� �ش����Ͽ� �����. (with-open-file�� �����. �� �����ϸ� append, ������ ������)
       (format t "~&~S" score))) ; ��������� ������ Ȯ���ϱ� ���Ͽ� ȭ�� ����� ��.

(defun read-all-objects (stream &optional eof-indicator) ; FILE�� EOF�� �ٷ�� ���� �Լ�
     (let ((result (read stream nil eof-indicator)))
        (if (eq result eof-indicator) 
            nil 
            (cons result (read-all-objects stream)))))

;; 9-4
(defun AVG-SCORE ()
    (with-open-file (stream "Score.txt") ; with-open-file�� ����Ͽ� �ش� ���Ϸκ��� �Է��� ����
(let ((content (read-all-objects stream))) ; �Է¹��� ������ content�� ������.
          (mapcar #'(lambda (x)
                      (list (car x) (/ (+ (nth 1 x) (nth 2 x) (nth 3 x)) 3))) content)))) ; content�� ������ �����Ͽ� ����� �����.
      
                          
                          
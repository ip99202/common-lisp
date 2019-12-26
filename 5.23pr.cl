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
       (format stream "~S~%" score) ; 입력받은 object를 해당파일에 출력함. (with-open-file을 사용함. 단 존재하면 append, 없으면 생성함)
       (format t "~&~S" score))) ; 파일출력한 내용을 확인하기 위하여 화면 출력을 함.

(defun read-all-objects (stream &optional eof-indicator) ; FILE의 EOF를 다루기 위한 함수
     (let ((result (read stream nil eof-indicator)))
        (if (eq result eof-indicator) 
            nil 
            (cons result (read-all-objects stream)))))

;; 9-4
(defun AVG-SCORE ()
    (with-open-file (stream "Score.txt") ; with-open-file을 사용하여 해당 파일로부터 입력을 받음
(let ((content (read-all-objects stream))) ; 입력받은 내용을 content에 저장함.
          (mapcar #'(lambda (x)
                      (list (car x) (/ (+ (nth 1 x) (nth 2 x) (nth 3 x)) 3))) content)))) ; content의 내용을 추출하여 평균을 계산함.
      
                          
                          
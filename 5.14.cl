;;
(defvar *glee-club*
    '((john smith) (barbara wilson) (mustapha ali)))

(defun print-one-name (name)
  (format t "~&~10S ~S" (second name) (first name)))

(defun print-all-names (x)
  (mapcar #'print-one-name x)
  'done)

(defun my-square ()
  (format t "Please type in a number: ")
  (let ((x (read)))
    (format t "The number ~S squared is ~S.~%" x (* x x))))

(defun riddle ()
  (if (yes-or-no-p "Do you seek something? ")
      (format t "Yes, I do.")
    (format t "No, I don’t.")))

(defun save-tree-data (tree-loc tree-table num-trees)
  (with-open-file (stream "timber.txt" ;;파일명 지정
                          :direction :io ;;파일을 읽을건지 쓸건지 결정 io: 인풋 아웃풋 둘다
                          :if-exists :overwrite ;;파일 존재하면 덮어쓰기
                          :if-does-not-exist :create) ;;파일 존재하지 않으면 새로 만들어라
    (format stream "~&~S~%" tree-loc)
    (format stream "~&~S~%" tree-table)
    (format stream "~&~S~%" num-trees)))

(defun get-tree-data ()
  (with-open-file (stream "timber.txt"
                          :direction :input)
    (let* ((tree-loc (read stream))
           (tree-table (read stream))
           (num-trees (read stream)))
      (format t "~&There are ~S trees on ~S." num-trees tree-loc)
      (format t "~&They are: ~S" tree-table))))



(defun read-my-file ()
  ;; 파일의 모든걸 불러오는 
  (with-open-file (stream "timber.txt")
    (let ((contents (read-all-objects stream)))
      (format t "~&Read ~3D objects from the file." (length contents))
      contents)))

(defun read-all-objects (stream &optional eof-indicator)
  ;; eof(end of file)를 만날때까지 모든 오브젝트를 읽어온다
  (let ((result (read stream nil eof-indicator)))
    (if (eq result eof-indicator) ;;; same address? 주소비교
        nil
      (cons result (read-all-objects stream)))))


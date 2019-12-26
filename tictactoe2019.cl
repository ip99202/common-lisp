;;
;; Case Study: Tic-Tac-Toe
;;
;;


;;
;; Defining global variables and constants
;;

(defconstant One 1)         ;; human
(defconstant TheOther 10)   ;; computer

(defvar *Opponent* One)
(defvar *Computer* TheOther)

(defvar *Triplets*
  '((1 2 3) (4 5 6) (7 8 9)	;; Horizontal
    (1 4 7) (2 5 8) (3 6 9)	;; Vertical
    (1 5 9) (3 5 7)))	        ;; Diagonal

(defvar *Corners* '(1 3 7 9))
(defvar *Sides* '(2 4 6 8))


;;
;; Main
;;

;;
;; Initialization: Creating a board
;;

(defun make-board ()
   "Creating a new board"
   (list 'Board 0 0 0 0 0 0 0 0 0))

;;
;; Printing out the board
;;

(defun convert-to-letter (v)
   "Converting a number to letter"
   (cond ((equal v One) "O")        ;; it's me
         ((equal v TheOther) "X")   ;; computer
         (t " ")))                  ;; Otherwise, empty space

(defun print-row (x y z)
   "printing out each row"
  (format t "~& || ~A | ~A | ~A ||"
    (convert-to-letter x)
    (convert-to-letter y)
    (convert-to-letter z)))

(defun print-board (board)
   "printing play board"
  (format t "~%")
  (format t "~% ||")(format t "===========")(format t "||")
  (print-row (nth 1 board) (nth 2 board) (nth 3 board))
  (format t "~% ||")(format t "-----------")(format t "||")
  (print-row (nth 4 board) (nth 5 board) (nth 6 board))
  (format t "~% ||")(format t "-----------")(format t "||")
  (print-row (nth 7 board) (nth 8 board) (nth 9 board))
  (format t "~% ||")(format t "===========")(format t "||")
  (format t "~%~%"))

;;
;; Set the player's move
;;

(defun make-move (Player Pos Board)
   "1 or 10 depending on who's moving"
   (setf (nth Pos Board) Player) 
   Board)

;;
;; (setf MyBoard (make-board))
;; (make-move *Opponent* 3 MyBoard)
;; (make-move *Computer* 5 MyBoard)
;; (print-board MyBoard)
;;

;;
;; To win the game, making three-in-a-row
;; global variable: *triplets*
;;

(defun sum-triplet (Board Triplet)
   "returning the sum of the numbers in the board positions"
   (+ (nth (first Triplet) Board)
      (nth (second Triplet) Board)
      (nth (third Triplet) Board)))

;;
;; (sum-triplet MyBoard '(3 5 7))
;;

(defun compute-sums (Board)
   "returing a list of all eight sums"
   (mapcar #'(lambda (Triplet) (sum-triplet Board Triplet)) *Triplets*))

;;
;; (compute-sums MyBoard)
;;

(defun winner-p (Board)
   "checking out if there is a winner"
   (let ((Sums (compute-sums Board)))
      (or (member (* 3 *Computer*) Sums)
          (member (* 3 *Opponent*) Sums))))

;;
;; (winner-p MyBoard)
;;

;;
;; Playing the game: Let's start!
;;

(defun play-one-game ()
  "playing the game"
  (if (y-or-n-p "Do you like to go first?")
      (opponent-move (make-board))   ;; human first
    (computer-move (make-board)))) ;; computer first

;;
;; Human move
;;

(defun opponent-move (Board)
   "asking the opponent to type in a move and checking the legal move"
   (let* ((Pos (read-a-legal-move Board))
          (NewBoard (make-move *Opponent* Pos Board)))
      (print-board NewBoard)
      (cond ((winner-p NewBoard) 'YouWin)
            ((board-full-p NewBoard) 'TieGame)
            (t (computer-move NewBoard)))))

(defun read-a-legal-move (Board)
   "checking whether it¡¯s a legal move"
   (format t "~& Your move: ")
   (let ((Pos (read)))
      (cond ((not (and (integerp Pos) (<= 1 Pos 9)))
             (format t "~& Invalid input")
             (read-a-legal-move Board))
            ((not (zerop (nth Pos Board)))
             (format t "~& Already occupied")
             (read-a-legal-move Board))
            (t Pos))))

(defun board-full-p (Board)
   "testing if there are no more empty spaces left"
   (not (member 0 Board)))

;;
;; Computer move
;; depending upon choose-best-move
;;

(defun computer-move (Board)
   "calling choose-best-move"
   (let* ((BestMove (choose-best-move3 Board))
          (Pos (first BestMove))
          (Strategy (second BestMove))
          (NewBoard (make-move *Computer* Pos Board)))
      (format t "~&My move: ~S" Pos)
      (format t "~&My strategy: ~A~%" Strategy)
      (print-board NewBoard)
      (cond ((winner-p NewBoard) 'IWin)
            ((board-full-p NewBoard) 'TieGame)
            (t (opponent-move NewBoard)))))

(defun choose-best-move (Board)
   "1st version"
   (random-move-strategy Board))

(defun random-move-strategy (Board)
   "strategy: random"
   (list (pick-random-empty-position Board) "Random Move"))

(defun pick-random-empty-position (Board)
   "randomly select the position"
   (let ((Pos (+ 1 (random 9))))
      (if (zerop (nth Pos Board))
         Pos
         (pick-random-empty-position Board))))

;;
;; (play-one-game)
;;

;;
;; Smarter program:
;; To win the game: If there are two Xs in a row, fill in the third X.
;; To block the opponent from winning: If there are two Os in a row, put an X there.
;;

(defun make-three (Board)
   "If there are two Xs in a row, fill in the third X."
   (let ((Pos (win-or-block Board (* 2 *Computer*))))   ;; 2 * 10
      (and Pos (list Pos "make three in a row"))))

(defun block-opponent-win (Board)
   "If there are two Os in a row, put an X there."
   (let ((Pos (win-or-block Board (* 2 *Opponent*))))    ;; 2 * 1
      (and Pos (list Pos "block the opponent"))))

(defun win-or-block (Board TargetSum)
   "Checking out if there are two Xs"
   (let ((Triplet 		;; Triplet: a specific triplet, e.g., (1 2 3)
           (find-if #'(lambda (Tri) (equal (sum-triplet Board Tri) TargetSum)) *Triplets*)))
      (when Triplet (find-empty-position Board Triplet))))

(defun find-empty-position (Board Cells)
   "Cells in a triplet, e.g., (1 2 3)"
   (find-if #'(lambda (Pos) (zerop (nth Pos Board))) Cells))

(defun choose-best-move2 (Board)
   "2nd version"
   (or (make-three Board)
       (block-opponent-win Board)
       (random-move-strategy Board)))

;;
;; taking 5th position 
;;

(defun take-center (Board)
   "Taking 5th position on the board"
   (when (and (zerop (nth 5 Board))
              (or (equal 1 (apply #'+ (cdr Board)))
                  (equal 0 (apply #'+ (cdr Board)))))
      (let ((Pos 5))
         (and Pos (list Pos "taking 5th position")))))

;;
;; blocking a squeeze play and a two-on-one attack
;;

(defun block-squeeze-play (Board)
   "Defending against a squeeze play"
   (sq-and-2 Board *Computer* *Sides* 12 "block squeeze play"))

(defun block-two-on-one (Board)
   "Defending against a two-on-one attack"
   (sq-and-2 Board *Opponent* *Corners* 12 "block two-on-one"))

(defun sq-and-2 (Board Player Pool V Strategy)
   "squeeze play and two-on-one"
   (when (equal (nth 5 Board) Player)
      (or (sq-helper Board 1 9 V Strategy Pool)
          (sq-helper Board 3 7 V Strategy Pool))))

(defun sq-helper (Board C1 C2 Val Strategy Pool)
   "squeeze play and two-on-one"
   (when (equal Val (sum-triplet Board (list C1 5 C2)))
      (let ((Pos (find-empty-position Board (or Pool (list C1 C2)))))
         (and Pos (list Pos Strategy)))))

;;
;; squeeze play
;; (setf MyBoard (make-board))
;; (make-move *Opponent* 1 MyBoard)
;; (make-move *Computer* 5 MyBoard)
;; (make-move *Opponent* 9 MyBoard)
;; (print-board MyBoard)
;; (block-squeeze-play MyBoard)
;; (make-move *Computer* 2 MyBoard)
;; (print-board MyBoard)
;;
;; two-on-one
;; (setf MyBoard (make-board))
;; (make-move *Opponent* 1 MyBoard)
;; (make-move *Computer* 9 MyBoard)
;; (make-move *Opponent* 5 MyBoard)
;; (print-board MyBoard)
;; (block-two-on-one MyBoard)
;; (make-move *Computer* 3 MyBoard)
;; (print-board MyBoard)
;; 

(defun choose-best-move3 (Board)
   "3rd version"
   (or (take-center Board)
       (make-three Board)
       (block-opponent-win Board)
       (block-squeeze-play Board)
       (block-two-on-one Board)
       (random-move-strategy Board)))
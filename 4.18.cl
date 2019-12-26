International Allegro CL Free Express Edition
10.1 [32-bit Windows] (Mar 28, 2019 13:02)
Copyright (C) 1985-2019, Franz Inc., Oakland, CA, USA.  All Rights Reserved.

This development copy of Allegro CL is licensed to:
   Allegro CL 10.1 Express user

Loaded options from C:\Users\happy\Documents\allegro-ide-options.cl.

;; Optimization settings: safety 1, space 1, speed 1,
;; debug 2.
;; For a complete description of all compiler switches
;; given the current optimization settings evaluate
;; (EXPLAIN-COMPILER-SETTINGS).

[changing package from "COMMON-LISP-USER" to "COMMON-GRAPHICS-USER"]
CG-USER(1): 
; Autoloading for ACL-SOCKET:MAKE-SSL-CLIENT-STREAM:
; Fast loading C:\acl10.1express\code\ssl.002
;;; Installing ssl patch, version 2.
;   Foreign loading libeay32.dll.

CG-USER(1): (setf x '(1 2 3 4 5 6))
(1 2 3 4 5 6)
CG-USER(2): x
(1 2 3 4 5 6)
CG-USER(3): (pop x)
1
CG-USER(4): x
(2 3 4 5 6)
CG-USER(5): (push x 1)
Error: 1: illegal atomic form for get-setf-expansion.
[condition type: PROGRAM-ERROR]
CG-USER(6): (push 1 x)
(1 2 3 4 5 6)
CG-USER(7): 
CG-USER(7): (set exclusive or '(a b c) '(b c d))
Error: Attempt to take the value of the unbound
       variable `EXCLUSIVE'.
[condition type: UNBOUND-VARIABLE]
CG-USER(8): (set-exclusive or '(a b c) '(b c d))
Error: attempt to call `SET-EXCLUSIVE' which is an
       undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(9): (set-exclusive-or '(a b c) '(b c d))
(D A)
CG-USER(10): (set-exclusive-or '(1 1 1) '(0 0 0))
(0 0 0 1 1 1)
CG-USER(11): (set-exclusive-or '(a a a b c) '(b c d d d))
(D D D A A A)
CG-USER(12): (remove-duplicates '(1 1 0 2 2 3 4))
(1 0 2 3 4)
CG-USER(13): (remove-duplicates '(a d b d e a))
(B D E A)
CG-USER(14): (contrast 'object1 'object2)
Error: attempt to call `CONTRAST' which is an
       undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(15): 
Error: Comma not inside a backquote. [file position =
       77]
[condition type: READER-ERROR]
CG-USER(15): 
Error: MACRO DEFPARAMETER expects between 2 and 3
       arguments.  It was given 12 arguments:
       (*QUALITY-TABLE* '(LARGE . SIZE) (SMALL . SIZE)
        (MEDIUM . SIZE) (RED . COLOR) (GREEN . COLOR)
        (YELLO . COLOR) (SHINY . LUSTER)
        (DULL . LUSTER) (CUBE . SHAPE)
        (PYRAMID . SHAPE) (GLOBE . SHAPE)).
[condition type: PROGRAM-ERROR]
CG-USER(15): 
Error: MACRO DEFPARAMETER expects between 2 and 3
       arguments.  It was given 12 arguments:
       (*QUALITY-TABLE* '(LARGE . SIZE) (SMALL . SIZE)
        (MEDIUM . SIZE) (RED . COLOR) (GREEN . COLOR)
        (YELLO . COLOR) (SHINY . LUSTER)
        (DULL . LUSTER) (CUBE . SHAPE)
        (PYRAMID . SHAPE) (GLOBE . SHAPE)).
[condition type: PROGRAM-ERROR]
CG-USER(15): 
Error: MACRO DEFPARAMETER expects between 2 and 3
       arguments.  It was given 12 arguments:
       (*QUALITY-TABLE* '(LARGE . SIZE) (SMALL . SIZE)
        (MEDIUM . SIZE) (RED . COLOR) (GREEN . COLOR)
        (YELLO . COLOR) (SHINY . LUSTER)
        (DULL . LUSTER) (CUBE . SHAPE)
        (PYRAMID . SHAPE) (GLOBE . SHAPE)).
[condition type: PROGRAM-ERROR]
CG-USER(15): 
; Fast loading
;    C:\Users\happy\Desktop\수업\2-1\인공지능프로그래밍설계\4.18.fasl
CG-USER(15): *Quality-Table*
((LARGE . SIZE) (SMALL . SIZE) (MEDIUM . SIZE)
 (RED . COLOR) (GREEN . COLOR) (YELLO . COLOR)
 (SHINY . LUSTER) (DULL . LUSTER) (CUBE . SHAPE)
 (PYRAMID . SHAPE) ...)
CG-USER(16): (description 'object1)
(LARGE GREEN SHINY CUBE)
CG-USER(17): (description 'object2)
(LARGE RED DULL PYRAMID)
CG-USER(18): (description 'object3)
(SMALL YELLO SHINY GLOBE)
CG-USER(19): (differnces 'object1 'object2)
Error: attempt to call `DIFFERNCES' which is an
       undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(20): (differences 'object1 'object2)
(PYRAMID DULL RED CUBE SHINY GREEN)
CG-USER(21): (contrast 'object1 'object2)
(SHAPE LUSTER COLOR)
CG-USER(22): (contrast 'object1 'object3)
(SHAPE COLOR SIZE)
CG-USER(23): (contrast 'object2 'object3)
(SHAPE LUSTER COLOR SIZE)
CG-USER(24): (list nil)
(NIL)
CG-USER(25): 
; Fast loading
;    C:\Users\happy\Desktop\수업\2-1\인공지능프로그래밍설계\4.18pr.fasl
CG-USER(25): (MY-BUTLAST '(a v c))
(A V)
CG-USER(26): 
; Fast loading
;    C:\Users\happy\Desktop\수업\2-1\인공지능프로그래밍설계\4.18pr.fasl
CG-USER(26): (my-complement-set '(1 5 8 9 10) '(3 5 6 9 10))

(6 3 8 1)
CG-USER(27): 
CG-USER(27): 
; Fast loading
;    C:\Users\happy\Desktop\수업\2-1\인공지능프로그래밍설계\4.18pr.fasl
CG-USER(27): 
; Fast loading
;    C:\Users\happy\Desktop\수업\2-1\인공지능프로그래밍설계\4.18pr.fasl
CG-USER(27): (set-equal ‘(4 7 2 9 5) ’(5 7 9 4 2))
Error: Attempt to take the value of the unbound
       variable `‘'.
[condition type: UNBOUND-VARIABLE]
CG-USER(28): 
; Fast loading
;    C:\Users\happy\Desktop\수업\2-1\인공지능프로그래밍설계\4.18pr.fasl
CG-USER(28): (set-equal '(4 7 2 9 5) '(5 7 9 4 2))
T
CG-USER(29): 
; Fast loading
;    C:\Users\happy\Desktop\수업\2-1\인공지능프로그래밍설계\4.18pr.fasl
CG-USER(29): (WHO-WROTE 'candide)
VOLTAIRE
CG-USER(30): 
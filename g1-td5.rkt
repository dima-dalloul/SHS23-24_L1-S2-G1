; TD 5 - 22/03/2024

; Exercise 2
(define (mirrorString word)
  ; returns the mirror of the given word (so that the word will be written backwards)
  ; string -> string
  (if (= (string-length word) 0) ""
      (string-append (mirrorString (substring word 1 (string-length word)))
                     (substring word 0 1))))

;(mirrorString "Hello")


; for a list, we can't use the same solutions as for a string :
; we can scroll from left to right, but not add to the end of the list ;
; we can add to the beginning of a list, but not browse from right to left

(define (mirrorList l)
  ; returns the mirror of l (a list containing all the elements of l in reverse order)
  ; list -> list
  (mirrorL l '()))

(define (mirrorL ll rl)
  ; returns a list containing the elements of ll in reverse order,
  ; then those of rl in the same order
  ; 2 lists -> list
  (if (null? ll) rl
      (mirrorL (cdr ll) (cons (car ll) rl))))

(mirrorList '( 1 2 3 4 5 6))
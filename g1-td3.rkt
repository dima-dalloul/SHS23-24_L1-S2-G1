;TD3 - 16-02-2024

;Get the user's input as a String
;(symbol->string (read))

; Get a character from the user

;; converting a character to a symbol:
(define (char->symbol c)
  (string->symbol (string c)))

(char->symbol #\a) ;;=> produces 'a

(define (symbol->char sym)
  (match (string->list (symbol->string sym))
    [(list ch) ch]
    [other (error 'symbol->char 
                  "expected a one-character symbol, got: ~s" sym)])) 

(symbol->char 'a) ;; => produces #\a

; Exercise 1
; a
(define (isVowel? c)
  ;returns true if c is a vowel
  ; character -> boolean
  (or (char-ci=? c #\a)
      (char-ci=? c #\e)
      (char-ci=? c #\i)
      (char-ci=? c #\o)
      (char-ci=? c #\u)
      (char-ci=? c #\y)))

; b
(define (firstGrooup? verb)
  ; returns true if the verb is from the first group (ends with -er)
  ; string -> boolean
  (let ((wordLength (string-length verb)))
    (string=? "er" (substring verb (- wordLength 2 ) wordLength))))

;(display (firstGrooup? "manger"))

; c
(define (conjugaison verb)
  ; display the conjugaison of the given verb
  ; the verb must be of first group and ends wih -er
  ; string -> multiple line display
  (if (firstGrooup? verb)
      (let ((root (substring verb 0 (- (string-length verb) 2))))
        (begin
          (display (if (isVowel? (string-ref verb 0))
                       "j'"
                       "je "))
                   (display (string-append root "e"))(newline)
          (display "tu ")(display (string-append root "es"))(newline)
          (display "il/elle/on ")(display (string-append root "e"))(newline)
          (display "nous ")(display (string-append root "ons"))(newline)
          (display "vous ")(display (string-append root "ez"))(newline)
          (display "ils/elles ")(display (string-append root "ent"))(newline)))
      (begin
        (display "The given verb is not from the first group")(newline))))

;(display "Write a first group verb")
;(conjugaison (symbol->string (read)))
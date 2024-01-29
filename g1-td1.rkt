;G1 - TD1 - 26/01/2024

;Exercise 2
;-----------
(define word  "abracadabra")
; string abra
(substring word 0 4)
(substring word 7 11)

; string ra
(substring word 2 4)
(substring word 9 11)

; string r
(substring word 2 3)

; caracter b
(string-ref word 1)


;Exercise 3
;-----------
(define ch "Hello Word!")
; Test if the word is douled
(string=?
 (substring ch 0 (quotient (string-length ch) 2))
 (substring ch (quotient (string-length ch) 2) (string-length ch)))

; create a doubled word
(string-append ch ch)


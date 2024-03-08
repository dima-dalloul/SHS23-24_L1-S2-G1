;TD4 - 08/03/2024

;Exercise 1
(define (sumFirstIntegers n)
  (if (= n 0) 0
      (+ n (sumFirstIntegers (- n 1)))))

(define (exercise1)
  (display "Enter an integer greater or equal than 0 : ")
  (define n (read))
  (display "The sum of the fist integers of ") (display n) (display " is  ")
  (display (sumFirstIntegers n)))

;(exercise1)

; Exercise 2
(define (sumFirstEvenNumbers n)
  (cond ((= n 0) 0)
        ((= (remainder n 2) 0) (+ n (sumFirstEvenNumbers (- n 2))))
        (else (sumFirstEvenNumbers (- n 1)))))

(define (exercise2)
  (display "Enter an integer greater than 0 : ")
  (define n (read))
  (display "The sum of the fist even integers of ") (display n) (display " is  ")
  (display (sumFirstEvenNumbers n)))

(exercise2)
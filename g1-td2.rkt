;TD2 - 09-02-2024

;Exercise 1
(define (exercise1)
  (define currentYear 2024)
  (display "Please write your birth year ")
  (define birthyear (read))

  (display "Did you already celebrate your birthday this year?")
  (define birthday2024 (read))
  (cond 
    ((equal? birthday2024 'yes)
     (display "You are ")
     (display (- currentYear birthyear))
     (display "  years old."))
    ((equal? birthday2024 'no)
     (display "You are ")
     (display (- (- currentYear birthyear) 1))
     (display "  years old."))))


; Exercise 2
(define (exercise2)
  (display "Please input 2 integers other than 0: ")
  (define A (read))
  (define B (read))

  (define addition (+ A B))
  (define substraction (- A B))
  (define multiplication (* A B))
  (define divide (quotient A B))
  (define reste (remainder A B))

  ; display on one line
  (display "A= ")
  (display A)
  (display ", B= ")
  (display B)
  (display ", A+B=")
  (display addition)
  (display ", A-B=")
  (display substraction)
  (display ", A*B=")
  (display multiplication)
  (display ", A/B=")
  (display divide)
  (display ", remainder A/B=")
  (display reste)


  ; display on one column
  (newline)
  (display "A= ")
  (display A)
  (newline)
  (display "B= ")
  (display B)
  (newline)
  (display "A+B=")
  (display addition)
  (newline)
  (display "A-B=")
  (display substraction)
  (newline)
  (display "A*B=")
  (display multiplication)
  (newline)
  (display "A/B=")
  (display divide)
  (newline)
  (display "remainder A/B=")
  (display reste))

;Exercise 3
(define (triangleArea b h)
  ; returns the area of an triangle with the base b and the height h
  ; 2 real numbers >= 0 -> 1 real number >= 0
 (/ (* b h) 2))

(define (equilateralTriangleArea s)
  ; returns the area of an equilateral triangle with the side s
  ; 1 real number >= 0 -> 1 real number >= 0
  (triangleArea s (* (/ (sqrt 3) 2) s)))

(define (regularHexagone s)
  ; returns the area of a regular hexagone with the side s
  ; 1 real number >= 0 -> 1 real number >= 0
  (* 6 (equilateralTriangleArea s)))

(display (regularHexagone (read)))
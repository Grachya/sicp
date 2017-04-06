; старый вариант
(define (sqrt-iter guess x)
  (if(good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
      x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

 (sqrt 9)
 (sqrt 0.01)
 (sqrt 0.04)
 (sqrt 0.000001)

;1 ]=> (sqrt 9)
;Value: 3.00009155413138

;1 ]=> (sqrt 0.01)
;Value: .10032578510960605

;1 ]=> (sqrt 0.04)
;Value: .2006099040777959

;1 ]=> (sqrt 0.000001)
;Value: 3.1260655525445276e-2




; новый вариант
(define (better-sqrt-iter guess prev-guess x)
  (if (better-good-enough? guess prev-guess)
    guess
    (better-sqrt-iter (improve guess x) guess
      x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (better-good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) prev-guess)) 0.001))

(define (better-sqrt x)
  (better-sqrt-iter 1.0 0.5 x))

 (better-sqrt 9)
 (better-sqrt 0.01)
 (better-sqrt 0.04)
 (better-sqrt 0.000001)



;1 ]=> (better-sqrt 9)
;Value: 3.000000001396984

;1 ]=> (better-sqrt 0.01)
;Value: .10000000000139897

;1 ]=> (better-sqrt 0.04)
;Value: .2000000000021489

;1 ]=> (better-sqrt 0.000001)
;Value: 1.0000001533016628e-3


;Результат вычисления кв корня из 0.01 у better-sqrt явно лучше (.10032578510960605 vs .10000000000139897)
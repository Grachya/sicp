;вычисление кбического корня
(define (improve2 y x)
    (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (better-good-enough? guess prev-guess)
  (< (/ (abs(- guess prev-guess)) prev-guess) 0.001))

(define (cube-sqrt-iter guess prev-guess x)
    (if (better-good-enough? guess prev-guess)
      guess
      (cube-sqrt-iter (improve2 guess x) guess x)))

(define (cube-root x)
  (cube-sqrt-iter 1.0 0.5 x))

(cube-root 9);

;Value: 2.0800838232385224
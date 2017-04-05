; задаем новое условие new-if
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause))
        (else else-clause))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(square (sqrt 1000))

; РЕШЕНИЕ:
; будет ошибка (maximum recursion depth exceeded) бесконечной рекурсии, тк при апликативном методе вычислений
; будут вычисляться в начале все параметры функции new-if
; 1 - (good-enough? guess x)
; 2 - guess
; 3 - (sqrt-iter (improve guess x) x) - и на этом этапе цикл замкнется

; форма if является осбой, тк она вычисляет в начале первый параметр и если оно true - одно дальше не идет
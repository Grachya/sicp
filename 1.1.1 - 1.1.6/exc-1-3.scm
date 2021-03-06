;;Определите процедуру, которая принимает в качестве аргументов три числа и возвращает сумму квадратов двух бо ́льших из них.

(define (sum-of-squares x y) (+ (* x x) (* y y)))

(define (three a b c) 
  (sum-of-squares (if (> a b) a b) 
                  (if (> b c) b c)))

(three 1 2 3) ;; 2^2 + 3^2 => 4 + 9 => 13

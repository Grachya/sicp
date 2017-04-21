(define (func n)
  (if (< n 3) n
    (+ (func (- n 1)) (func (- n 2)) (func (- n 3)))))


(func 10)
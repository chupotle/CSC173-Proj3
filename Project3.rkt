(define (sumfact n i)
  (cond
    ((= i 1) 1)
    ((= (remainder n i) 0)
     (+ i (sumfact n (- i 1))))
    (else (sumfact n (- i 1)))))

(define (perfectnum num counter)
  (cond
    [(not(= counter 0))
     (cond
       [(= num (sumfact num (- num 1))) (display num) (display "\n")(perfectnum (+ num 1)(- counter 1))]
       [(not(= num (sumfact num (- num 1)))) (perfectnum (+ num 1) counter)])]))

(define (isPerf low high)
  (cond
    [(not(> low high))
     (cond
       [(= low (sumfact low (- low 1))) (display low)(display " perfect \n")]
       [(< low (sumfact low (- low 1))) (display low)(display " deficient \n")]
       [(> low (sumfact low (- low 1))) (display low)(display " abundant\n")]
       [else #f])
    (isPerf (+ low 1) high)]))

(perfectnum 2 3)
(display "\n")
(isPerf 2 1000)

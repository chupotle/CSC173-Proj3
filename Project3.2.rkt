(define (sumfact n i)
  (cond
    ((= i 1) 1)
    ((= (remainder n i) 0)
     (+ i (sumfact n (- i 1))))
    (else (sumfact n (- i 1)))))

(define (isPerf low high)
  (cond
    [(not(= low high))
     (cond
       [(= low (sumfact low (- low 1))) (display low)(display " perfect \n")]
       [(< low (sumfact low (- low 1))) (display low)(display " deficient \n")]
       [(> low (sumfact low (- low 1))) (display low)(display " abundant\n")]
       [else #f])
    (isPerf (+ low 1) high)]))
    

(isPerf 2 1000)
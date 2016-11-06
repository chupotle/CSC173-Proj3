(define (sumfact n i)
  (cond
    ((= i 1) 1)
    ((= (remainder n i) 0)
     (+ i (sumfact n (- i 1))))
    (else (sumfact n (- i 1)))))

(sumfact 8128 (- 8129 1))


(define (perfectnum n)
  (cond ((not(= n 0))
         (display(string-append(number->string(* (- (expt 2 n) 1) (expt 2 (- n 1)))) "\n"))      
         (perfectnum(- n 1)))))


(perfectnum 100)


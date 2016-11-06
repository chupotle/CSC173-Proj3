

#|

(define (perfectnum n)
  (cond ((not(= n 0))
         (display(string-append(number->string(* (- (expt 2 n) 1) (expt 2 (- n 1)))) "\n"))      
         (perfectnum(- n 1)))))


|#
(define (sumfact n i)
  (cond
    ((= i 0) 1)
    ((= i 1) 1)
    ((= (remainder n i) 0)
     (+ i (sumfact n (- i 1))))
    (else (sumfact n (- i 1)))))
(sumfact 6 5)
(define (perfectnum n counter)
  (cond
    ((not (= counter 0))
     (cond [= (sumfact n (- n 1)) n]
           (display(string-append(number->string(n)) "\n"))
           (perfectnum((+ n 1) (- counter 1)))
           (else (perfectnum((+ n 1) counter)))))))

  
(perfectnum 1 5)



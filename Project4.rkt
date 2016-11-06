(define (perfectnum n)
  (cond ((not(= n 0))
         (display(string-append(number->string(* (- (expt 2 n) 1) (expt 2 (- n 1)))) "\n"))      
         (perfectnum(- n 1)))))


(perfectnum 100)

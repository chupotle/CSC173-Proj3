;;CSC 173 Project 3
;;Collaborators: Timothy Chu, Vincent Ou, Griffin van de Venne

;;Recursively finds the sum of the factors of a number
;;n = the number, i = number - 1
(define (sumfact n i)
  (cond
    ((= i 1) 1)
    ((= (remainder n i) 0)
     (+ i (sumfact n (- i 1))))
    (else (sumfact n (- i 1)))))
;;Finds n perfect numbers with n = counter
(define (perfectnum num counter)
  (cond
    [(not(= counter 0));; if we have not reached the desired amount of perfect numbers
     (cond
       [(= num (sumfact num (- num 1))) (display num) (display "\n")(perfectnum (+ num 1)(- counter 1))] ;;check if the sum of the factors is equal to the number, if so print and move on to the next number and counter
       [(not(= num (sumfact num (- num 1)))) (perfectnum (+ num 1) counter)])]));; if not move onto the next number

;;Lists numbers between low and high and list whether they are abundant perfect or deficient
(define (isPerf low high)
  (cond
    [(not(> low high)) ;;if we reached the end of the list
     (cond
       [(= low (sumfact low (- low 1))) (display low)(display " perfect \n")];;sum of factors = number
       [(< low (sumfact low (- low 1))) (display low)(display " deficient \n")];;sum of factors < number
       [(> low (sumfact low (- low 1))) (display low)(display " abundant\n")];;sum of factors > number
       [else #f])
    (isPerf (+ low 1) high)]))

;Part 1
;do not change the first number, 3 is the number of perfect numbers to be printed
(perfectnum 2 3)
(display "\n")

;Part 2
;the two numbers is the range of numbers to check
(isPerf 2 1000)

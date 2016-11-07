# CSC173-Proj3
Groupmates Timothy Chu, Vincent Ou, Griffin van de Venne

Project3.rkt is the Racket file that runs part 1 and part 2 of the project. Click Run in DrRacket in order to run the test cases for the project.

There is a sumfact(n i) function that calculates the sum of the factors of the number n, with i being one unit less than n. The variable i functions as a counter of sorts. 

perfectnum(num counter) counts down from the number of perfect numbers we want to print out and num is the starting number, in this case 2. This function looks at all the numbers starting from 2 and checks if it is perfect, and if it is it prints out that number and increases the counter by one.

isPerf(low high) has a similar function as perfectnum as in it checks all the numbers between the low and high and checks if they are abundant, perfect, or deficient usign the sumfact(n i) function. After checking it prints out the number and the corresponding label.
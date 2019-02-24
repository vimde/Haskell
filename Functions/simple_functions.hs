calculateChange amountOwed amountGiven = if change > 0
                                         then change
                                         else 0
                                where change = amountGiven - amountOwed


doublePlusTwo x = doubleX + 2
    where doubleX = x * 2


sumOfSquaresOrSquaresOfSum number otherNumber = if sumOfSquares > squaresOfSum
                                                then sumOfSquares
                                                else squaresOfSum
                                            where sumOfSquares = number ^ 2 + otherNumber ^ 2
                                                  squaresOfSum = (number + otherNumber) ^ 2
                                                

doubleDouble x = (\x -> x * 2) (x * 2)
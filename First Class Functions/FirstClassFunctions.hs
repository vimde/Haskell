ifEvenIncrement number = if even number
                        then number + 1
                        else number

ifEvenDouble number = if even number
                        then number * 2
                        else number

ifEvenSquare number = if even number
                    then number * number
                    else number

-- All three functions listed above are nearly identical. Let us rewrite the functions so that they take a new function as argument.

ifEven func number = if even number
                    then func number
                    else number

increment number = number + 1
square number = number * number
double number = number * 2


-- ifEven (\x -> x ^ 3) 10
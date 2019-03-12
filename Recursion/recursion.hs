customTake :: (Num i, Ord i) => i -> [a] -> [a]
customTake n _ 
    | n <= 0 = []
customTake _ [] = []
customTake n (x:xs) = x : customTake (n-1) xs

customDrop :: (Num i, Ord i) => i -> [a] -> [a]
customDrop n _
    | n < 0 = []
customDrop 0 xs = xs
customDrop _ [] = []
customDrop n (x:xs) = customDrop (n - 1) xs
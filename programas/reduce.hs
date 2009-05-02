sum' []     = 0.0
sum' (x:xs) = x + sum xs

maximum' []     = 0
maximum' (x:xs) = max x (maximum' xs)

any_even' []     = False
any_even' (x:xs) = (x `mod` 2 == 0) || (any_even' xs)

concat' []     = []
concat' (x:xs) = x ++ (concat' xs)





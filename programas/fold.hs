sum' []     = 0.0
sum' (x:xs) = x + sum' xs

maximum' []     = 0
maximum' (x:xs) = max x (maximum' xs)

any_even' []     = False
any_even' (x:xs) = (x `mod` 2 == 0) ||
                   (any_even' xs)

concat' []     = ""
concat' (x:xs) = x ++ (concat' xs)


sum''      = foldl (+) 0.0 
maximum''  = foldl max 0 
concat''   = foldl (++) "" 
any_even'' = foldl (\ x y ->
                   x || even y) False 

{-
foldl:: (a -> b -> a) -> a -> [b] -> a
foldl f z0 []     = z0
foldl f z0 (x:xs) = foldl f (f z0 x) xs
-}

main = putStrLn ""


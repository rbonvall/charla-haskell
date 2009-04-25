qs [] = []
qs (x:xs) = qs (filter (<x) xs) ++
            [x] ++
            qs (filter (>=x) xs)

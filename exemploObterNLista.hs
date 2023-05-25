primeiros::Int -> [t] -> [t]
primeiros 0 _ = []
primeiros _ [] = []
primeiros n (a:as) = a: primeiros (n-1) as

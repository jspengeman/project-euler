problem_1 :: Int
problem_1 = sum [x | x <- [1..999], (x `mod` 3 == 0 || x `mod` 5 == 0)]

problem_2 :: Integer
problem_2 = sum [x | x <- fib, x `mod` 2 == 0] 


fib :: [Integer]
fib = fib_func 1 2

fib_func :: Integer -> Integer -> [Integer]
fib_func 1 2 = 1 : 2 : (fib_func 2 3)
fib_func x1 x2 = if (x2 < 4000000) then (x2 : fib_func x2 (x1 + x2)) else []

--Number two is not working due to fib 1 2 being an infinte set
--I didn't even think I could generate the fib numbers
--Done goofing off now I should get back to studying 
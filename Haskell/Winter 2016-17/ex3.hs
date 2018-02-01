module Ex3 where
compareWithHund :: Int -> Ordering
compareWithHund = compare 100

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUp :: Char -> Bool
isUp = (`elem` ['A'..'Z'])

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f $ f x

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x

corr100K :: Integer -> Integer
corr100K z = head (filter p [100000,99999..])
  where p x = x `mod` z == 0

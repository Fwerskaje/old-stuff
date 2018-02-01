module Ex7 where
import Control.Monad

wopwop :: Maybe Char
wopwop = do
  (x:xs) <- Just ""
  return x

ex1 = [3,4,5] >>= \x -> [x, -x]

ex2 = [] >>= \x -> [1,2,3]

ex3 = [1,2,3] >>= \x -> []

ex4 = [1,2] >>= \n -> ['a','b'] >>= \ch -> return (n, ch)

listOfTuples :: [(Int, Char)]
listOfTuples = do
  n <- [1,2]
  ch <- ['a', 'b']
  return (n, ch)

ex5 = guard (5 > 2) :: Maybe ()

ex6 = guard (1 > 2) :: Maybe ()

ex7 = [1..50] >>= (\x -> guard ('7' `elem` show x) >> return x)

ex8 = guard (5 > 2) >> return "cool" :: [String]

ex9 = guard (1 > 2) >> return "cool" :: [String]

ex10 = guard (1 > 0) >> return "cool" :: Maybe String

sevensOnly :: [Int]
sevensOnly = do
  x <- [1..50]
  guard ('7' `elem` show x)
  return x

  

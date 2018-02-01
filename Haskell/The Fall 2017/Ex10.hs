module Ex10 where

import Data.Monoid 
import Control.Monad.Writer

isBigGang :: Int -> (Bool, String)
isBigGang x = (x > 9, "The size of band was ordered with 9")


applyLog :: (Monoid m) => (a, m) -> (a -> (b, m)) -> (b, m)
applyLog (x, log) f = let (y, newLog) = f x
                      in (y, log `mappend` newLog)

ex1 = (3, "Little band") `applyLog` isBigGang

type Food = String
type Price = Sum Int

addDrink :: Food -> (Food, Price)
addDrink "bobi" = ("milk", Sum 25)
addDrink "meat" = ("wisky", Sum 99)
addDrink _ = ("bear", Sum 30)

ex2 = Sum 3 `mappend` Sum 9

ex3 = ("bobi", Sum 10) `applyLog` addDrink

ex4 = runWriter (return 3 :: Writer String Int)

ex5 = runWriter (return 3 :: Writer (Sum Int) Int)

logNumber :: Int -> Writer [String] Int
logNumber x = writer (x, ["Num: " ++ show x])

multiWithLog :: Writer [String] Int
multiWithLog = do
  a <- logNumber 3
  b <- logNumber 5
  return (a * b)

multiWithLog' :: Writer [String] Int
multiWithLog' = do
  a <- logNumber 3
  b <- logNumber 5
  tell ["Multiply this numbers"]
  return (a * b)
  
gcd' :: Int -> Int -> Writer [String] Int
gcd' a b
  | b == 0 = do
      tell ["Result: " ++ show a]
      return a
  | otherwise = do
      tell [show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)]
      gcd' b (a `mod` b)

      

module Ex5 where

type Birds = Int
type Pole = (Birds, Birds)

{-
landLeft :: Birds -> Pole -> Pole
landLeft n (left, right) = (left + n, right)

landRight :: Birds -> Pole -> Pole
landRight n (left, right) = (left, right + n)
-}

x -: f = f x

landLeft :: Birds -> Pole -> Maybe Pole
landLeft n (left, right)
  | abs ((left + n) - right) < 4 = Just (left + n, right)
  | otherwise = Nothing

landRight :: Birds -> Pole -> Maybe Pole
landRight n (left, right)
  | abs (left - (right + n)) < 4 = Just (left, right + n)
  | otherwise = Nothing


ex1 = return (0, 0) >>= landRight 2 >>= landLeft 2 >>= landRight 2

banana :: Pole -> Maybe Pole
banana _ = Nothing

ex2 = return (0, 0) >>= landLeft 1 >>= banana >>= landRight 1

ex3 = return (0, 0) >>= landLeft 1 >> Nothing >>= landRight 2

routine :: Maybe Pole
routine = do
  start <- return (0, 0)
  first <- landLeft 2 start
  second <- landRight 2 first
  landLeft 1 second


justFirst :: Maybe Char
justFirst = do
  (x:xs) <- Just "hello"
  return x

  

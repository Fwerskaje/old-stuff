module Ex3 where

import Data.Monoid
import qualified Data.Foldable as F
import Control.Applicative 

ex1 = getProduct $ Product 3 `mappend` Product 9

ex2 = getSum $ Sum 2 `mappend` Sum 9

ex3 = getAny $ Any True `mappend` Any False

ex4 = getAll $ mempty `mappend` All True

lengthCompare :: String -> String -> Ordering 
lengthCompare x y =
  let a = length x `compare` length y
      b = x `compare` y
  in if a == EQ then b else a

lengthCompare' :: String -> String -> Ordering
lengthCompare' x y = (length x `compare` length y) `mappend` (x `compare` y)

lengthCompare'' :: String -> String -> Ordering
lengthCompare'' x y = (length x `compare` length y) `mappend`
                      (vowels x `compare` vowels y) `mappend`
                      (x `compare` y)
  where vowels = length . filter (`elem` "aeoui")

ex5 = Just (Sum 5) `mappend` Just (Sum 4)

ex6 = getFirst $ First Nothing `mappend` First (Just 'b')

ex7 = getFirst . mconcat . map First $ [Nothing, Just 9, Just 10]

ex8 = getLast . mconcat . map Last $ [Nothing, Just 9, Just 10]

ex9 = F.foldl (+) 2 (Just 9)

ex10 = F.foldl (||) False (Just True)

data Tree a = EmptyTree | Node a (Tree a) (Tree a)
  deriving (Show)

instance F.Foldable Tree where
  foldMap f EmptyTree = mempty
  foldMap f (Node x l r) = F.foldMap f l `mappend`
                           f x `mappend`
                           F.foldMap f r

testTree = Node 5
           (Node 3
             (Node 1 EmptyTree EmptyTree)
             (Node 6 EmptyTree EmptyTree)
           )
           (Node 9
             (Node 8 EmptyTree EmptyTree)
             (Node 10 EmptyTree EmptyTree)
           )

ex11 = F.foldl (+) 0 testTree

ex12 = F.foldl (*) 1 testTree

ex13 = getAny $ F.foldMap (\x -> Any $ x == 3) testTree

ex13' = F.foldMap (\x -> Any $ x == 3) testTree

ex14 = getAny $ F.foldMap (\x -> Any $ x > 15) testTree

ex15 = F.foldMap (\x -> [x]) testTree




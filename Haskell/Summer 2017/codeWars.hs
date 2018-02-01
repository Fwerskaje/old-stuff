module MATHAN where
import qualified Data.List as L

p' n = p n n

p 0 0 = 1
p n k
  | (n > 0) && (k == 0) = 0
  | k <= n = (p n (k - 1)) + (p (n - k) k)
  | k > n = p n n

funCheck f l = L.sortBy (\(_,x) (_,y) -> compare x y) [(x, (f x)) | x <- l]
greatestFCheck f n = let lF = funCheck f [(negate n)..n] in
                       (head lF, last lF)

{-
f x = (g x) + (g x)
g x = (f x) - (f (negate x)) / 2
h x = (f x) + (f (negate x)) / 2
-}


average :: Foldable t => t Int -> Int
average ns = sum ns `div` length ns

ourMap :: (a -> b) -> [a] -> [b]
ourMap [x] = f x
ourmap f (x:xs) = (f x) : ourMap xs 

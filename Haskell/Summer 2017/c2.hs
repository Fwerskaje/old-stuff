module Snail where

import Data.List


-- snail :: [[Int]] -> [Int]
snail [] = []
snail (xs:xss) = [(xs,xss)] ++ (snail . reverse . transpose) xss

{-

snail [[1,2,3],[4,5,6],[7,8,9]]

[([1,2,3],[[4,5,6],[7,8,9]]),
([6,9],[[5,8],[4,7]]),
([8,7],[[5,4]]),
([4],[[5]]),
([5],[])]

-}




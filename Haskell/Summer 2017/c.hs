module Codewars.G964.Longestconsec where
import qualified Data.List as L

-- longestConsec :: [String] -> Int -> String
longestConsec strarr k = --last $
  L.sortBy (\x y -> (length x) `compare` (length y)) $ loop strarr strarr (k - 1)
  where 
    addC mainC baseC = [x ++ y | x <- mainC, y <- baseC, x /= y]
    loop mC bC counter
      | counter == 0 = mC
      | otherwise = loop (addC mC bC) bC (counter - 1)
  

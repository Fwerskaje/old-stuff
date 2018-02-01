module Codewars.G964.Getmiddle where

getMiddle :: String -> String
getMiddle s
  | l s = [s !! f s]
  | otherwise = [s !! (pred (f s)), s !! f s]
    where l s = odd (length s)
          f s = floor $ (fromIntegral (toInteger (length s)) :: Float) / 2 

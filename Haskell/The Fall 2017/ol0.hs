module Main where

main = do
  input <- sequence [getLine, getLine, getLine]
  putStrLn $ show $ f input

f :: [String] -> Int
f l = sum [1 | x <- (map read . words) (l !! 1), (x == (read (last l) :: Int))]



          
          

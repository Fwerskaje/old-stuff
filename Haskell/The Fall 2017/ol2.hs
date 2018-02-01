module Main where

main = error "!" --do erro
  --n <- getLine
  --putStrLn $ show $ f' (read n :: Int)
  
f l = l >>= \x -> [x - 1, x - 2, x - 3]


f' n = length $ filter (> 0) $ concat $ map f $ map (\x -> [x]) $ reverse [(n - 3)..n]


{-
f' :: [Int] -> Int -> [Int] 
f' l 0 = l
f' l n = f' (f l) (pred n)
-}

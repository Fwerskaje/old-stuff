main = do
  putStrLn "Введите выражение: "
  expr <- getLine
  if (null expr) || (expr == "q")
    then return ()
    else do
    putStrLn $ show $ parseEval expr
    main


parseEval :: String -> Integer
parseEval expr =
  let op = (head expr)
      args = (map (\x -> read x :: Integer) (words (tail expr)))
      in calc op args

funParse '+' = plus
funParse '-' = minus
--funParse '/' = divi
--funParse '*' = mul

calc :: (Num a) => Char -> [a] -> a 
calc f args = (funParse f) args

plus :: (Num a, Foldable t) => t a -> a 
plus = sum

minus :: (Num a, Foldable t) => t a -> a
minus = foldr1 (-) 
{-
divi :: (Num a, Foldable t) => t a -> a
divi arg = floor $ foldr1 (/) arg

mul :: (Num a, Foldable t) => t a -> a 
mul = product
-}



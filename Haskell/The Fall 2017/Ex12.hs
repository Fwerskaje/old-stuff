module Test where

newtype IndexesAndAnnotations = IAA [(Int, String)]

createTitle :: IndexesAndAnnotations -> String
createTitle (IAA l) = foldr1 (++) $ map (\(i,ann) -> (show i) ++ " " ++ ann ++ " ") l

book1 :: IndexesAndAnnotations
book1 = IAA [(1, "Ukraine"), (2, "Russia"), (3, "USA")]

title1 :: String
title1 = createTitle book1 -- "1 Ukraine 2 Russia 3 USA "

wtf :: Num a => [(a, [Char])]
wtf = [(-1488, "NAZI")]

title2 :: String
title2 = createTitle $ book1 ++ wtf -- "1 Ukraine 2 Russia 3 USA -1488 NAZI "

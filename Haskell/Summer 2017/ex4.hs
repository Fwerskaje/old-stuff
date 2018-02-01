module Demo where

if' True x y = x
if' False x y = y

getSecondFrom :: a -> b -> c -> b
getSecondFrom x y z = y

mono :: Char -> Char
mono x = x

semiMono :: Char -> a -> Char
semiMono x y = x

module Ex2 where

mono :: Char -> Char
mono x = x

semiMono :: Char -> a -> Char
semiMono x y = x

apply2 f x = f (f x)

-- Kek
sumOfmaxNum :: [Integer] -> Integer
sumOfmaxNum xs = 
	sum [maximum xs| _ <- xs]

deleteNum :: String -> String
deleteNum xs = 
	[list|list <- xs, not (elem list ['1'..'9'])]

triangleHyp :: Double -> Double -> Double
triangleHyp a b = 
	if ((&&) (a > 0) (b > 0)) then
		sqrt $ a^2 + b^2
	else
		error "Error"
	
lucky :: Int -> String
lucky 7 = "Lucky number!"
lucky n = "L o s e"

addVectors ::     (Double, Double)
			   -> (Double, Double)
			   -> (Double, Double)
addVectors (x1,x2) (y1,y2) = (x1 + x2, y1 + y2)

-- Для извлечения данных из тройки
first :: (a,b,c) -> a 
first (a,_,_) = a 

second :: (a,b,c) -> b 
second (_,b,_) = b 

third :: (a,b,c) -> c 
third (_,_,c) = c

head' :: [a] -> a
head' [] = error "Null list"
head' (x:_) = x 

-- product' :: (Int) -> Int
-- product' (xs) = product [xs] 

toList :: a -> [a]
toList n = [n]

-- Не готово
-- tell :: (Show a) => [a] -> String
-- tell [] = "Null list"
-- tell








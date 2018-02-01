module Ex1 where

factorial''''' :: Integer -> Integer
factorial''''' n
	| n >= 0 = helper 1 n
	| otherwise = error "Error"
	where 
		helper acc 0 = acc
		helper acc n = 
			helper (acc * n) (n - 1)

factorial'''' :: Integer -> Integer
factorial'''' n
	| n >= 0 =
		let 
			helper acc 0 = acc
			helper acc n = helper (acc * n) (n - 1)
		in helper 1 n
	| otherwise = error "Error"

factorial''' :: Integer -> Integer
factorial''' n
	| n >= 0 = helper 1 n
	| otherwise = error "Bad args"

helper acc 0 = acc
helper acc n = helper (acc * n) (n - 1)

factorial'' :: Integer -> Integer
factorial'' n 
	| n == 0 = 1
	| n < 0 = error "< 0"
	| n > 0 = n * factorial (n - 1)
	| otherwise = error "Some error"

factorial' :: Integer -> Integer
factorial' 0 = 1
factorial' n =
	if n < 0 then error "< 0" 
		else n * factorial (n - 1)

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)


{- Определите функцию, 
вычисляющую двойной факториал, 
то есть произведение натуральных чисел, 
не превосходящих заданного числа и 
имеющих ту же четность. 
Например: 7!!=7⋅5⋅3⋅1
,  8!!=8⋅6⋅4⋅2
. Предполагается, что аргумент функции 
может принимать только неотрицательные 
значения. -}

doubleFact :: Integer -> Integer
doubleFact 0 = 1
doubleFact 1 = 1
doubleFact n =
	n * doubleFact (n - 2)

fibonacci :: Integer -> Integer
fibonacci n
	| n == 0 = 0
	| n == 1 || n == -1 = 1
	| n > 0 = fibonacci (n - 1) + fibonacci (n - 2)
	| n < 0 = fibonacci (n + 2) - fibonacci (n + 1)

roots :: Double -> Double -> Double -> (Double, Double)
roots a b c = 
	(((-b - sqrt (b ^ 2 - 4 * a * c)) / 2 * a),
	((-b + sqrt (b ^ 2 - 4 * a * c)) / 2 * a))

roots' :: Double -> Double -> Double -> (Double,Double)
roots' a b c =
	let d = sqrt (b ^ 2 - 4 * a * c) in
	((-b -d) / (2 * a), (-b + d) / (2 * a))

roots'' :: Double -> Double -> Double -> (Double,Double)
roots'' a b c =
	let {
	d = sqrt (b ^ 2 - 4 * a * c);
	x1 = (-b - d) / (2 * a);
	x2 = (-b + d) / (2 * a);
	}
	in (x1,x2)

roots''' :: Double -> Double -> Double -> (Double,Double)
roots''' a b c =
	let
		d = sqrt (b ^ 2 - 4 * a * c)
		x1 = (-b - d) / aTwice
		x2 = (-b + d) / aTwice
		aTwice = 2 * a
	in (x1,x2)

roots'''' :: Double -> Double -> Double -> (Double,Double)
roots'''' a b c = (x1,x2) where
	d = sqrt (b ^ 2 - 4 * a * c)
	aTwice = 2 * a 
	x1 = (-b - d) / aTwice
	x2 = (-b + d) / aTwice

rootsDif a b c =
	let
		(x1,x2) = roots a b c
	in x2 - x1







module Exxx1 where
import Data.List
import Data.Char
import qualified Data.Map as Map

lucky :: Int -> String
lucky 7 = "LUCKY NUMBER"
lucky _ = ":("

sayMe :: Int -> String
sayMe 1 = "ODIN1"
sayMe 2 = "DVA2)))"
sayMe 3 = "TRI3))"
sayMe _ = "KEK))"

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first' :: (a, b, c) -> a
first' (a, _, _) = a

second' :: (a, b, c) -> b
second' (_, b, _) = b

third' :: (a, b, c) -> c
third' (_, _, c) = c

head' :: [a] -> a
head' [] = error "NULL LIST"
head' (x:_) = x

firstLetter :: String -> String
firstLetter "" = "NULL STRING"
firstLetter all@(x:xs) = "Первая буква строки " ++ all ++ " это " ++ [x]

bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "DISTROFEEK"
  | bmi <= 25.0 = "UROD"
  | bmi <= 30.0 = "ZHIRNIJ"
  | otherwise = "SUPER ZHIR"

bmiTell' :: Double -> Double -> String
bmiTell' weight height
  | weight / height ^ 2 <= 18.5 = "Слышь, эмо, ты дистрофик!"
  | weight / height ^ 2 <= 25.0 = "По части веса ты в норме. Зато, небось, уродец!"
  | weight / height ^ 2 <= 30.0 = "Ты толстый! Сбрось хоть немного веса!"
  | otherwise = "Мои поздравления, ты жирный боров!"

max' :: (Ord a) => a -> a -> a
max' a b
  | a <= b = b
  | otherwise = a
 
myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b 
  | a == b = EQ
  | a <= b = LT
  | otherwise = GT

bmiTell'' :: Double -> Double -> String
bmiTell'' weight height
  | bmi <= skinny = "EMAR)"
  | bmi <= normal = "NORM)"
  | bmi <= fat = "ZHRINIJ)"
  | otherwise = "SPRZHIR)"
  where bmi = weight / height ^ 2
        (skinny, normal, fat) = (18.5, 25.0, 30.0)

greet :: String -> String
greet name
  | name == "Juan" = niceGreeting ++ " Juan!"
  | name == "Fernardo" = niceGreeting ++ " Fernardo!"
  | otherwise = badGreeting ++ " " ++ name
  where niceGreeting = "Nice to meet you,"
        badGreeting = "Whoa, its you,"

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where (f:_) = firstname
        (l:_) = lastname

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi w h = w / h ^ 2

cylinder :: Double -> Double -> Double
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2 in sideArea + 2 * topArea 

calcBmis' :: [(Double, Double)] -> [Double]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

head'' :: [a] -> a
head'' xs =
  case xs of
    [] -> error "NULL LIST"
    (x:_) -> x

describeList :: [a] -> String
describeList xs = "List " ++
  case xs of
    [] -> "null"
    [x] -> "with one element"
    xs -> "long"
    
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "NULL LIST"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

replicate' :: Integer -> a -> [a]
replicate' n x
  | n <= 0 = []
  | otherwise = x : replicate' (n - 1) x

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' 0 _  = []
take' _ [] = []
take' n (x:xs) = x : take'(n - 1) xs 

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

repeat' :: a -> [a]
repeat' x = x : repeat' x

zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys 

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
  | a == x = True
  | otherwise = elem' a xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  quicksort [a | a <- xs, a <= x] ++ [x] ++ quicksort [a | a <- xs, a > x]
  
compareWithHundred :: Int -> Ordering
compareWithHundred = compare 100

isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f $ f x

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
  where g x y = f y x

flip'' :: (a -> b -> c) -> (b -> a -> c)
flip'' f x y = f y x

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x = x : filter' p xs
  | otherwise = filter' p xs

largestDivisible :: Integer
largestDivisible = head $ filter p [100000,99999..]
  where p x = x `mod` 3829 == 0

chain :: Integer -> [Integer]
chain 1 = [1]
chain n
  | even n = n : chain (n `div` 2)
  | odd n = n : chain (n * 3 + 1)
  
numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
  where isLong xs = length xs > 15

numLongChains' :: Int
numLongChains' = length (filter (\xs -> length xs > 15) (map chain [1..100]))
  
theLongestChain :: [Integer]
theLongestChain = last (sortBy (\x y -> (length x) `compare` (length y)) $ map chain [1..100])

listOfFuns = map (*) [0..]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

addThree' :: Int -> Int -> Int -> Int 
addThree' = \x -> \y -> \z -> x + y + z -- WOW!


sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0

elem'' :: (Eq a) => a -> [a] -> Bool
elem'' y ys = foldl (\acc x -> if x == y then True else acc) False ys

map'' :: (a -> b) -> [a] -> [b]
map'' f xs = foldr (\x acc -> f x : acc) [] xs

maximum'' :: (Ord a) => [a] -> a
maximum'' = foldl1 max

-- dropWhile' :: (a -> Bool) -> [a] -> [a]
-- dropWhile' f xs = foldl (\acc'@(acc) x -> if (f x) then acc' else x : acc) [] xs   

reverse'' :: [a] -> [a]
reverse'' = foldl (\acc x -> x : acc) []

reverse''' :: [a] -> [a]
reverse''' = foldl (flip (:)) []

product' :: (Num a) => [a] -> a
product' = foldl (*) 1

filter'' :: (a -> Bool) -> [a] -> [a]
filter'' p = foldr (\x acc -> if p x then x : acc else acc) []

last' :: [a] -> a
last' = foldl1 (\_ x -> x)

and' :: [Bool] -> Bool
and' xs = foldr (&&) True xs

sqrtSums :: Int
sqrtSums = length (takeWhile (< 1000) (scanl1 (+) (map sqrt [1..]))) + 1

comp' :: (b -> c) -> (a -> b) -> a -> c -- f (g x) 
f `comp'` g = \x -> f (g x)

fn''' = ceiling . negate . tan . cos . max 50

oddSquareSum' :: Integer
oddSquareSum' = sum . takeWhile (< 1000) . filter odd $ map (^ 2) [1..]

-- uses Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

-- import Data.List (nub, sort)
-- import Data.List hiding (nub) т.е. всё кроме nub

-- import qualified Data.Map => Data.Map.filter because Prelude already have filter function
-- import qualified Data.Map as M => M.filter

wordNums :: String -> [(String, Int)]
wordNums = map (\ws -> (head ws, length ws)) . group . sort . words

isIn :: (Eq a) => [a] -> [a] -> Bool
needle `isIn` haystack = any (needle `isPrefixOf`) (tails haystack)

-- import Data.Char
encode :: Int -> String -> String
encode offset msg = map (\c -> chr $ ord c + offset) msg -- (chr . (+ offset) . ord)

decode :: Int -> String -> String
decode offset msg = map (\c -> chr $ ord c - offset) msg

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

firstTo40 :: Maybe Int
firstTo40 = find (\x -> digitSum x == 40) [1..]

firstTo :: Int -> Maybe Int
firstTo n = find (\x -> digitSum x == n) [1..]

phoneBook =
    [("olya","555–29-38")
   ,("zhenya","452–29-28")
   ,("katya","493–29-28")
   ,("masha","205–29-28")
   ,("nadya","939–82-82")
   ,("yulia","853–24-92")
   ]

-- findKey :: (Eq k) => k -> [(k,v)] -> v
-- findKey key xs = snd . head $ filter (\(k,v) -> key == k) xs

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k,v):xs)
   | key == k = Just v
   | otherwise = findKey key xs
  
findKey' :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey' key = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing

-- import qualified Data.Map as Map

-- Map.fromList [("MS",1),("MS",2),("MS",3)] => fromList [("MS"),3]

phoneBook' :: Map.Map String String
phoneBook' = Map.fromList phoneBook

string2digits :: String -> [Int]
string2digits = map digitToInt . filter isDigit

phoneBook''' =
   [("olya","555–29-38")
   ,("olya","342–24-92")
   ,("olya","333–22-44")
   ,("zhenya","452–29-28")
   ,("zhenya","493–29-28")
   ,("katya","943–29-29")
   ,("katya","827–91-62")
   ,("masha","205–29-28")
   ,("masha","939–82-82")
   ,("yulia","853–24-92")
   ,("yulia","555–21-11")
   ,("petya","148-86-66")
   ]

phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
phoneBookToMap xs = Map.fromListWith add xs
  where add num1 num2 = num1 ++ ", " ++ num2
  
phoneBookToMap' :: (Ord k) => [(k,a)] -> Map.Map k [a]
phoneBookToMap' xs = Map.fromListWith (++) $ map (\(k,v) -> (k,[v])) xs

-- Data Structures
data Shape = Circle Float Float Float | Rectangle Float Float Float Float


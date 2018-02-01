module Exx2 where

{-
data Shape = Circle Float Float Float |
            Rectangle Float Float Float Float
            deriving (Show)
-}


data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float |
             Rectangle Point Point deriving (Show)

{- 
area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)
-}

area :: Shape -> Float
area (Circle _ r) = pi * r ^ 2
area (Rectangle (Point x1 y1) (Point x2 y2)) =
  (abs $ x2 - x1) * (abs $ y2 - y1)


nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) a b =
  Circle (Point (x + a) (y + b)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b =
  Rectangle (Point (x1 + a) (y1 + b)) (Point (x2 + a) (y2 + b))

baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

baseRect :: Float -> Float -> Shape
baseRect width height = Rectangle (Point 0 0) (Point width height)

{- 
data Person =
  Person String String Int Float String String
  deriving (Show)
-}

{-
data Person = Person { firstName :: String,
                       lastName :: String,
                       age :: Int,
                       height :: Float,
                       phoneNumber :: String,
                       flavor :: String } deriving (Show)
-}

data Car = Car { company :: String,
                 model :: String,
                 year :: Int } deriving (Show)

-- Car {company = "Ford", model = "Focus", year = 2005}

data IntMaybe = INothing | IJust Int

data StringMaybe = SNothing | SJust String

data ShapeMaybe = ShNothing | ShJst Shape

data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) =
  Vector (i + l) (j + m) (k + n)

scalarProd :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `scalarProd` (Vector l m n) = i * l + j * m + k * n

vmult :: (Num a) => Vector a -> a -> Vector a
(Vector i j k) `vmult` m = Vector (i * m) (j * m) (k * m)

data Person = Person { firstName :: String,
                       lastName :: String,
                       age :: Int } deriving (Eq, Show, Read)

data Day = Monday | Tuesday | Wednesday | Thursday |
           Friday | Saturday | Sunday
           deriving (Eq, Ord, Show, Read, Bounded, Enum)

type Days = [Day]

type PhoneBook = [(String,String)]
phoneBook :: PhoneBook
phoneBook =
  [("Petya", "23-25-56"),
   ("Olya", "23-43-65")]

type Name = String
type PhoneNumber = String
inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook =
  (name, pnumber) `elem` pbook

type AssocList k v = [(k, v)]
{- type IntMap v = Map Int v
   type IntMap = Map Int -}

                 

                   

                               
                                     
                      



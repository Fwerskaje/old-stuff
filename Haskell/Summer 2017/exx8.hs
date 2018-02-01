module Exx8 where
import qualified Data.Char as C

data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False

instance Show TrafficLight where
  show Red = "RED"
  show Yellow = "YELLOW"
  show Green = "GREEN"
  
class YesNo a where
  yesno :: a -> Bool

instance YesNo Int where
  yesno 0 = False
  yesno _ = True

instance YesNo [a] where
  yesno [] = False
  yesno _ = True

instance YesNo Bool where
  yesno = id

instance YesNo (Maybe a) where
  yesno (Just a) = True
  yesno Nothing = False

instance YesNo TrafficLight where
  yesno Red = False
  yesno _ = True

yesnoIf :: (YesNo y) => y -> a -> a -> a
yesnoIf yesnoVal yesResult noResult =
  if yesno yesnoVal
     then yesResult
     else noResult

class FuckJS a where
  js :: a -> Int

instance FuckJS Int where
  js = id

instance FuckJS Char where
  js n = C.digitToInt n

jsPlus :: (FuckJS a, FuckJS b) => a -> b -> Int
x `jsPlus` y = (js x) + (js y)

data List a = Nil | Cons a (List a)

length :: List a -> Integer
length Nil = 0
length (Cons x xs) = 1 + length xs

map :: (a -> b) -> List a -> List b
map f Nil = Nil
map f (Cons x xs) = Cons (f x) (map f xs)







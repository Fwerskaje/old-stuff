module Exx1 where

-- Дата
data Date = Date Year Month Day

-- Год
data Year  = Year Int       -- Int это целые числа

-- Месяц
data Month  = January    | February   | March    | April          
            | May        | June       | July     | August   
            | September  | October    | November | December 

data Day = Day Int

-- Неделя
data Week  = Monday     | Tuesday   | Wednesday 
           | Thursday   | Friday    | Saturday     
           | Sunday     

-- Время
data Time = Time Hour Minute Second

data Hour   = Hour   Int    -- Час
data Minute = Minute Int    -- Минута
data Second = Second Int    -- Секунда

not' :: Bool -> Bool
not' False = True
not' True = False

and' :: Bool -> Bool -> Bool
and' False _ = False
and' True x = x

or' :: Bool -> Bool -> Bool
or' True _ = True
or' False x = x

xor' :: Bool -> Bool -> Bool
xor' a b =  or' (and' (not' a) b) (and' a (not' b))

ifThenElse :: Bool -> a -> a -> a
ifThenElse True a _ = a
ifThenElse False _ a = a

class Group a where
    e   :: a
    (+) :: a -> a -> a
    inv :: a -> a

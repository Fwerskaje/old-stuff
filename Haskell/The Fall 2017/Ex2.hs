module Demo where
import Control.Applicative 

myAction :: IO String
myAction = (++) <$> getLine <*> getLine

ex1 = getZipList $ (+) <$> ZipList [1,2,3] <*> ZipList [100,100,100]

ex2 = liftA2 (:) (Just 3) (Just [4])

sequenceA' :: (Applicative f) => [f a] -> f [a]
sequenceA' [] = pure []
sequenceA' (x:xs) = (:) <$> x <*> sequenceA' xs

ex3 = sequenceA [Just 1, Just 2]

ex4 = sequenceA [(+3), (+2), (+1)] 3

ex5 = sequenceA [[1,2,3], [4,5,6]]

ex6 = map (\f -> f 7) [(> 4), (< 10), odd]

ex7 = and $ map (\f -> f 7) [(> 4), (< 10), odd]

newtype CharList = CharList { getCharList :: [Char] }
  deriving (Eq, Show)

newtype Pair b a = Pair { getPair :: (a, b) }

instance Functor (Pair c) where
  fmap f (Pair (x, y)) = Pair (f x, y)

ex8 = getPair $ fmap (* 100) (Pair (2, 3))

--data CoolBool = CoolBool { getCoolBool :: Bool }
newtype CoolBool = CoolBool { getCoolBool :: Bool }

helloMe :: CoolBool -> String
helloMe (CoolBool _) = "hello"

 

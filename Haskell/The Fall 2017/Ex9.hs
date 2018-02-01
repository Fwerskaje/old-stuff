module Ex9 where
import Data.Function

newtype Identity a = Identity { runIdentity :: a }
  deriving (Eq, Show)

instance Functor Identity where
  fmap f (Identity x) = Identity (f x)

instance Applicative Identity where
  pure x = Identity x
  Identity f <*> Identity v = Identity (f v)

instance Monad Identity where
  return x = Identity x
  Identity x >>= k = k x

wrap'n'succ :: (Enum a, Num a) => a -> Identity a
wrap'n'succ x = Identity (succ x)

ex1 = runIdentity $ return 3 >>= wrap'n'succ >>= wrap'n'succ


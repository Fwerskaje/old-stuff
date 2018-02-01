{-# LANGUAGE GADTs #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Combinators where

data T t where
    S :: T ((a -> b -> c) -> (a -> b) -> (a -> c))
    K :: T (a -> b -> a)
    (:::) :: T (a -> b) -> T a -> T b

i = S ::: K ::: K

true = K
false = K ::: i
and = S ::: S ::: K
              --  ^ Ёбаный насос
{-
error:
    • Occurs check: cannot construct the infinite type: b ~ a -> b -> c
      Expected type: T ((a -> b -> c) -> a -> b)
        Actual type: T ((a -> b -> c) -> a -> a -> b -> c)
    • In the second argument of ‘(:::)’, namely ‘K’
      In the expression: S ::: S ::: K
      In an equation for ‘and’: and = S ::: S ::: K
    • Relevant bindings include
        and :: T ((a -> b -> c) -> a -> c)
-}

--x = true and false



-- instance Show (T t) where
  
  

  
  

{-
s x y z = x z (y z:k)
k x y = x

eval :: T a -> a
eval (S a) = s $ eval a
eval (K a) = k $ eval a
-}
{-
data Expr = I Int
          | Add Expr Expr
          | Mul Expr Expr
          | Eq Expr Expr 

eval :: Expr -> Int
eval (I n) = n
eval (Add e1 e2) = eval e1 + eval e2
eval (Mul e1 e2) = eval e1 * eval e2
-}

{-
data Expr a where
  I :: Int -> Expr Int
  B :: Bool -> Expr Bool
  Add :: Expr Int -> Expr Int -> Expr Int
  Mul :: Expr Int -> Expr Int -> Expr Int
  Eq :: Expr Int -> Expr Int -> Expr Bool
            
eval :: Expr a -> a
eval (I n) = n
eval (B b) = b
eval (Add e1 e2) = eval e1 + eval e2
eval (Mul e1 e2) = eval e1 * eval e2
eval (Eq  e1 e2) = eval e1 == eval e2

ex1 = Mul (I 4) $ Add (I 1) (I 2)
-}

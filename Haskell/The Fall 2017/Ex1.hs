module Ex1 where

data Nat = O | S Nat

natToNum :: (Num t, Enum t) => Nat -> t
natToNum n = l n 0
  where
    l O count = count 
    l (S n') count = l n' (succ count)

numToNat :: (Eq t, Num t, Enum t) => t -> Nat
numToNat n = l O n
  where
    l nat 0 = nat
    l nat n = l (S nat) (pred n)

showNat n = l n ""
  where
    l O s = s ++ "0"
    l (S n') s = l n' (s ++ "S")

instance Show Nat where
  show n = show (natToNum n)


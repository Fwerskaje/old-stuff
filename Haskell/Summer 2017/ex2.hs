module Demo where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

factorial' 0 = 1
factorial' n = if n < 0 then
               error "N < 0"
               else
                 n * factorial' (n - 1)
                
factorial'' 0 = 1
factorial'' n 
  | n < 0 = error "N < 0"
  | n > 0 = n * factorial (n - 1)

factorial''' :: Integer -> Integer
factorial''' n
  | n == 0 = 1
  | n > 0 = n * factorial''' (n - 1)
  | otherwise = error "N < 0"

factorial'''' n | n >= 0 = helper 1 n
                | otherwise = error "N < 0"

helper acc 0 = acc
helper acc n = helper (acc * n) (n - 1)

{- def fib(n):
  def fib_help(a, b, n):
    return fib_help(b, a+b, n-1) if n > 0 else a
return fib_help(0, 1, n) -}
fib' n z = (*) ((-1)^(n + 1)) z
fibonacci :: Integer -> Integer
fibonacci n
  | n >= 0 = fibHelp 0 1 n
  | otherwise = fib' (abs n) (fibHelp 0 1 $ abs n)

fibHelp a b n
  | n > 0 = fibHelp b (a + b) (n - 1)
  | otherwise = a
                

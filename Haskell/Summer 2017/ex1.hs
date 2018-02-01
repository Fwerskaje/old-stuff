module Demo where
import Data.Char

test = isDigit '7'

infixl 6 *+*
(*+*) a b = a ^ 2 + b ^ 2

infixl 6 +*+
a +*+ b = a * 2 + b * 2
  
infixl 6 +|+
a +|+ b = a ^ 2 + b ^ 3
  -- (+|+ 2) 1 => 9
  -- (10 +|+) 1 => 101


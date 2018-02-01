module Ex6 where

ex1 = Just 3 >>= (\x -> Just (show x ++ "!"))

ex2 = Just 3 >>= (\x -> Just "!" >>= (\y -> Just (show x ++ y)))


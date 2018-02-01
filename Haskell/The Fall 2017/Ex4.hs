module Ex4 where 

applyMaybe :: Maybe a -> (a -> Maybe b) -> Maybe b
applyMaybe Nothing f = Nothing
applyMaybe (Just x) f = f x

ex1 = Just 3 `applyMaybe` \x -> Just (x + 1)

ex2 = return "What?" :: Maybe String

ex3 = Just 3 >>= \x -> return (x * 10)



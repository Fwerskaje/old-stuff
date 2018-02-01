-- main = putStrLn "Привет, мир!"

import Data.Char

{-
main = do
  putStrLn "Привет, как тебя зовут?"
  name <- getLine
  putStrLn ("Привет, " ++ name ++ ", ну ты и хипстота!")
-}  

main = do
  putStrLn "Ваше имя?"
  firstName <- getLine
  putStrLn "Ваша фамилия?"
  lastName <- getLine
  let bigFirstName = map toUpper firstName
      bigLastName = map toUpper lastName
  putStrLn $ "Привет, " ++ bigFirstName ++ " "
                        ++ bigLastName  ++ ", как дела?"

{- main = do
  return ()
  return "Ha - ha - ha"
  line <- getLine
  return "La - la - la"
  return 4
  putStrLn line 
-}
{-
main = do
  let a = "ad"
      b = "da"
  putStrLn $ a ++ " " ++ b
-}
{-
main = do
  putStr "Hello, "
  putStr "I`m "
  putStrLn "Andy!"
-}
{-
main = do
   putChar 'А'
   putChar 'Б'
   putChar 'В'
-}
{-
main = do
   print True
   print 2
   print "ха-ха"
   print 3.2
   print [3,4,3]
-}
{-
import Control.Monad

main = do
  input <- getLine
  when (input == "РЫБА-МЕЧ") $ do
    putStrLn input
-}
{-
main = do
  rs <- sequence [getLine, getLine, getLine]
  print rs
-}

import Control.Monad
import Data.Char

{-
main = forever $ do
  putStr "Введите что-нибудь: "
  l <- getLine
  putStrLn $ map toUpper l
 -}
{-
import Data.Char

main = do
  contents <- getContents
  putStr $ map toUpper contents
-}
{-
main = do
  contents <- getContents
  putStr $ shortLinesOnly contents
-}
{-
main = interact shortLinesOnly

shortLinesOnly :: String -> String
shortLinesOnly = unlines . filter (\l -> length l < 15) . lines
-}
{-
main = interact respondPalindromes

respondPalindromes :: String -> String
respondPalindromes =
  unlines .
  map (\xs -> if isPal xs then "палиндром" else "не палиндром") .
  lines

isPal xs = xs == reverse xs
-}


import System.IO

{-
main = do
  handle <- openFile "text.txt" ReadMode
  contents <- hGetContents handle
  putStr contents
  hClose handle

-}
{-
main = do
  withFile "text.txt" ReadMode (\handle -> do
                                   contents <- hGetContents handle
                                   putStr contents)
-}

import Control.Exception
import System.IO
{-
withFile' :: FilePath -> IOMode -> (Handle -> IO a) -> IO a
withFile' name mode f =
  bracket (openFile name mode)
  (\handle -> hClose handle)
  (\handle -> f handle)
-}
{-
main = do
  withFile "text.txt" WriteMode (\handle -> do hPutStrLn handle "Вот так вот")
-}
{-
main = do
  contents <- readFile "text.txt"
  putStr contents

-}

main = do
  writeFile "text2.txt" "Тестовый текст"


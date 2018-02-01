import System.Environment
import System.Directory
import System.IO
import Control.Exception
import Data.List

dispatch :: String -> [String] -> IO ()
dispatch "add" = add
dispatch "view" = view
dispatch "remove" = remove
-- dispatch "bump" = bump

main = do
  (command:argList) <- getArgs
  dispatch command argList
{-
bump :: [String] -> IO ()
bump [fileName, numberString] = do
  contents <- readFile fileName
  let number = read numberString
      todoTasks = lines contents
      todoItem = todoTasks !! number
      newTodoItems = ((todoItem ++ "\n") ++ (unlines (delete todoItem todoTasks)))
  writeFile fileName newTodoItems
  -}
  
add :: [String] -> IO ()
add [fileName, todoItem] = appendFile fileName (todoItem ++ "\n")

view :: [String] -> IO ()
view [fileName] = do
   contents <- readFile fileName
   let todoTasks = lines contents
       numberedTasks = zipWith (\n line -> show n ++ " – " ++ line) [0..] todoTasks
   putStr $ unlines numberedTasks
   
remove :: [String] -> IO ()
remove [fileName, numberString] = do
  contents <- readFile fileName
  let todoTasks = lines contents
      number = read numberString
      newTodoItems = unlines $ delete (todoTasks !! number) todoTasks
  bracketOnError (openTempFile "." "temp")
    (\(tempName, tempHandle) -> do
        hClose tempHandle
        removeFile tempName)
    (\(tempName, tempHandle) -> do
        hPutStr tempHandle newTodoItems
        hClose tempHandle
        removeFile fileName
        renameFile tempName fileName)



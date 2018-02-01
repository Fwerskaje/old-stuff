module Main where

data ReplAnswer = ReplAnswer [Int] String

main = repl []

eval :: String -> [Int] -> ReplAnswer
eval "pop" stk = ReplAnswer (tail stk) (show (head stk))
eval "back" stk = ReplAnswer stk $ (show . head) stk
eval "size" stk = ReplAnswer stk $ show $ length stk
eval "clear" stk = ReplAnswer [] $ "ok"
eval push stk = ReplAnswer (n : stk) $ "ok"
  where n = read $ last $ words push

getOutput :: ReplAnswer -> String
getOutput (ReplAnswer _ s) = s

getStack :: ReplAnswer -> [Int]
getStack (ReplAnswer stk _) = stk

repl stack = do
  command <- getLine
  if (command == "exit") then putStrLn "bye"
    else do
    let evaluated = eval command stack
    let output = getOutput evaluated
    putStrLn output
    repl $ getStack evaluated


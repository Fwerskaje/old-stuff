module Okasaki1 where

suffixes [] = [[]]
suffixes l@(x:xs) = l : suffixes xs


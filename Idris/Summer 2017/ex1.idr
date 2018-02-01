module Main 

main : IO ()
main = putStrLn (cast 'x')


StringOrInt : Bool -> Type
StringOrInt x = case x of
                     True => Int
                     False => String

getStringOrInt : (x: Bool) -> StringOrInt x
getStringOrInt x = case x of
                        True => 94
                        False => "Ninety four"

valToString : (x : Bool) -> StringOrInt x -> String
valToString x y = case x of
                       True => cast y
                       False => y
{-

valToString : (x : Bool) -> StringOrInt x -> String
valToString x y = case x of
                       True => ?xt
                       False => ?xf
-} 
                                                                           
autismBool : Bool -> Bool -> Bool -> Bool
autismBool x y z = x && y && z

square : (k : Integer) -> Integer
square k = k * k



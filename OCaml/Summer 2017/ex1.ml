let randBool n = Random.bool (Random.init n)
               
let a = List.map randBool [1; 2; 3; 4; 5]

let sum list = List.fold_right (+) list 0

let rec range a b =
  if a > b then []
  else a :: range (a + 1) b

let c = sum (range 1 10)

let c1 = 99 > 100

let c2 = 4 + 3 + 2 + 1 = 10

let c3 = 1 = 1 (* = is Haskell == analog *)

let c4 = 1 <> 2 (* =/= *)

let c5 = if 100 > 99 then 0 else 1

let squareSum n = let square n = n * n in
                  (+) (square n) (square n)
(*
let isVowel c = c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u'
 *)
              (*
let rec factorial a =
  if a == 1 then 1 else
    a * factorial (a - 1)
               *)
  (*         
let rec gcd a b =
  if b == 0 then a else gcd b (a mod b)
   *)
                  
let rec factorial a =
  match a with
  | 1 -> 1
  | _ -> a * factorial (a - 1)

let isVowel a =
  match a with
  | 'a' | 'e' | 'i' | 'o' | 'u' -> true
  | _ -> false

let rec gcd a b =
  match b with
  | 0 -> a
  | _ -> gcd b (a mod b)

let isnil l =
  match l with
  | [] -> true
  | _ -> false

let rec len l =
  match l with
  | [] -> 0
  | x::xs -> 1 + len xs 

let
  a = 1
and
  b = 2
;;

let squaredList l = List.map (fun x -> x * x) l

let sqL = squaredList (range 1 10)

let ( ~^-^~ ) x = x + x * (x - 42)

let arrSquare = Array.map (fun x -> x * x)

let sqA = arrSquare [|1;2;3;4|]
        

let xs = let a = 1
         and b = 3
         and c = 4 in
         a + b + c

let m = 10

let x = function x -> x + m

let (++) c1 c2 = (fst c1) + (fst c2), (snd c1) + (snd c2)

(*
let rec sigma x =
  if x = 0 then 0
  else x + sigma (x - 1)
 *)
               
let rec pair n = (n <> 1) && ((n = 0) || (impair (n - 1)))
and impair n = (n <> 0) && ((n == 1) || (pair (n - 1)))

let sigma x =
  let rec sigma_rec x =
    if x = 0 then 0 else x + sigma_rec (x - 1) in
  if (x < 0) then "error: negative argument"
  else "sigma = " ^ (string_of_int (sigma_rec x))

let compose f g x = f (g x)

let ($*$) f g x = f (g x)

let add (x: int) (y: int) = x + y

let add' (x: 'a) (y: 'b) = add x y

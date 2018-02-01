open Core

let average x y =
  let open Int64 in
  x + y / of_int 2

let average' x y =
  Int64.(x + y / of_int 2)

       (* let module C = Counter in *)

module Interval = struct
  type t = | Interval of int * int
           | Empty

  let create low high =
    if high < low then
      Empty
    else
      Interval (low, high)    
end

module Extended_interval = struct
  include Interval

  let contains t x =
    match t with
    | Empty -> false
    | Interval (low, high) -> x >= low && x <= high                           
end
                             

open Core_kernel.Std

let res1 = 1 :: 2 :: 3 :: []

let rec drop_value l to_drop =
  match l with
  | [] -> []
  | hd :: tl ->
     let new_tl = drop_value tl to_drop in
     if hd = to_drop then new_tl else hd :: new_tl 
              
let rec drop_zero l =
  match l with
  | [] -> []
  | 0 :: tl -> drop_zero tl
  | hd :: tl -> hd :: drop_zero tl

let res2 = List.map ~f:String.length ["Hello"; "World"] 

let res3 = List.map2_exn ~f:Int.max [1;2;3] [3;2;1] 

let res4 = List.fold ~init: 0 ~f:(+) [1;2;3;4]

let res5 = List.fold ~init:[] ~f:(fun list x -> x :: list) [1;2;3;4]

let max_widths header rows =
  let lengths l = List.map ~f:String.length l in
  List.fold rows
    ~init:(lengths header)
    ~f:(fun acc row ->
      List.map2_exn ~f:Int.max acc (lengths row))

let max_widths' header rows =
  

let res6 = String.make 3 '-' 

let render_separator widths =
  let pieces = List.map widths
                 ~f:(fun w -> String.make (w + 2) '-')
  in
  "|" ^ String.concat ~sep:"+" pieces ^ "|" 
                                             
let res7 = render_separator [3;6;2]
let res7'' = render_separator [10; 15] 

let pad s length =
  let boarders = String.make ((length - String.length s) / 2) ' ' in
  boarders ^ s ^ boarders 
  
         
let pad' s length =
  " " ^ s ^ String.make (length - String.length s + 1) ' '

let res7' = String.length (pad "Hello" 10) 
    
let render_row' row width =
  let padded = List.map2_exn row width ~f:pad in
  "|" ^ String.concat ~sep:"|" padded ^ "|"

let render_row row width =
  List.map2_exn row width ~f:pad 
          
let res8 = render_row ["Hello"; "World"] [10;15] 

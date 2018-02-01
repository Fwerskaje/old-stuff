open Core_kernel.Std

let languages = "OCaml,Perl,C++,C"

let dashed_languages =
  let languages_list = String.split languages ~on:',' in
  String.concat ~sep:"-" languages_list

let area_of_ring inner_radius outer_radius =
  let pi = Float.acos (-1.) in
  let area_of_circle r = pi *. r *. r in
  area_of_circle outer_radius -. area_of_circle inner_radius 

let upcase_first_entry line =
  match String.split ~on:',' line with
  | [] -> assert false (* String.split return at least one argument *)
  | first :: rest -> String.concat ~sep:"," (String.uppercase first :: rest)

let res1 = List.map ~f:(fun x -> x + 1) [1; 2; 3] 
                       
let increments = [ (fun x -> x + 1); (fun x -> x + 2) ] 

let res2 = List.map ~f:(fun g -> g 5) increments 

let rec find_first_stutter list =
  match list with
  | [] | [_] -> None
  | x :: y :: tl ->
     if x = y then Some x else find_first_stutter (y :: tl)

let res3 = List.map ~f:((+) 3) [4; 5; 6] 

let (+!) (x1, y1) (x2, y2) = (x1 + x2, y1 + y2) 

let res4 = (3, 2) +! (-2, 4) 

let path = "/usr/bin:/usr/local/bin:/bin:/sbin" 

let res5 = String.split ~on:':' path
           |> List.dedup ~compare:String.compare
           |> List.iter ~f:print_endline 

let some_of_zero = function
  | Some x -> x
  | None -> 0 

let ratio ~num ~denom = float num /. float denom 

let apply_to_tuple f (first, second) = f ~first ~second  

let concat ?(sep="") x y = x ^ sep ^ y 

let res6 = concat ~sep:":" "foo" "bar" 



             



             

open Core_kernel.Std

let square x = x * x

let ratio x y =
  Float.of_int x /. Float.of_int y

let even x =
  x mod 2 = 0

let first_if_true test x y =
  if test x then x else y

let long_string s = String.length s > 6

let a_tuple = (3, 5)

let another_tuple = (3, "four", 5.)

let res =
  let (x, y) = a_tuple in
  x + y

let distance (x1, y1) (x2, y2) =
  sqrt ((x1 -. x2) ** 2. +. (y1 -. y2) ** 2.)

let languages = ["Ocaml"; "Perl"; "C"]

let res1 = List.length languages

let res2 = List.map languages ~f:String.length

let languahes2 = "French" :: "Spanish" :: languages

let res3 = [1; 2; 3] @ [1; 2; 3]

let my_favourite_language languages =
  match languages with
  | first :: the_rest -> first
  | [] -> "Ocaml"

let rec sum l =
  match l with
  | [] -> 0
  | hd :: tl -> hd + sum tl

let res4 = sum [1;3;4;6;9]

let rec destutter list =
  match list with
  | [] -> []
  | [hd] -> [hd]
  | hd1 :: hd2 :: tl ->
     if hd1 = hd2 then destutter (hd2 :: tl)
     else hd1 :: destutter (hd2 :: tl)

let divide x y = if y = 0 then None else Some(x / y)

let log_entry maybe_time message =
  let time =
    match maybe_time with
    | Some x -> x
    | None -> Time.now ()
  in
  Time.to_string time ^ " -- " ^ message
                                          
type point2d = { x : float; y : float }

let p = { x = 3.; y = -4. }

let magnitude { x = x_pos; y = y_pos } =
  sqrt (x_pos ** 2. +. y_pos ** 2.0)

let magnitude2 { x; y } = sqrt (x ** 2. +. y ** 2.) 

let distance v1 v2 =
  magnitude { x = v1.x -. v2.x; y = v1.y -. v2.y }

type circle_desc = { center: point2d; radius: float }
type rect_desc = { lower_left: point2d; width: float; height: float }
type segment_desc = { endpoint1: point2d; endpoint2: point2d }

type scene_element =
  | Circle of circle_desc
  | Rect of rect_desc
  | Segment of segment_desc 

let is_inside_scene_element point scene_element =
  match scene_element with
  | Circle { center; radius } ->
     distance center point < radius
  | Rect { lower_left; width; height } ->
     point.x > lower_left.x && point. x < lower_left.x +. width
     && point.y > lower_left.y && point.y < lower_left.y +. height
  | Segment -> { endpoint1; endpoint2 } -> false

let is_inside_scene point scene =
  List.exists scene
    ~f:(fun el -> is_inside_scene_element point el)

type running_sum =
  { mutable sum: float;
    mutable sum_sq: float;
    mutable samples: int;
  } 

let mean rsum = rsum.sum /. float rsum.samples
let stdev rsum =
  sqrt (rsum.sum_sq /. float rsum.samples
        -. (rsum.sum /. float rsum.samples) ** 2.)

let create () = { sum = 0.; sum_sq = 0.; samples = 0 }

let update rsum x =
  rsum.samples <- rsum.samples + 1;
  rsum.sum <- rsum.sum +. x;
  rsum.sum_sq <- rsum.sum_sq +. x *. x 
                                       

let x = ref 0 
                                     
let imp_sum list =
  let sum = ref 0 in
  List.iter list ~f:(fun x -> sum := !sum + x);
  !sum 
                                       


    

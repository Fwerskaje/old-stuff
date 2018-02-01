open Core

let res1 = List.reduce ~f:(+) [1;2;3;4;5;6]  

let res2 = List.reduce ~f:(+) [] 

let res3 = List.filter ~f:(fun x -> x mod 2 = 0) [1;2;3;4;5] 

let res4 =
  List.filter_map (Sys.ls_dir ".") ~f:(fun fname ->
      match String.rsplit2 ~on:'.' fname with
      | None | Some("",_) -> None
      | Some (_,ext) -> Some ext) |> List.dedup

let is_ocaml_source s =
  match String.rsplit2 s ~on:'.' with
  | Some (_,("ml"|"mli")) -> true
  | _ -> false 

let res5 =
  let (ml_files, other_files) =
    List.partition_tf (Sys.ls_dir ".") ~f:is_ocaml_source in
  (ml_files, other_files) 


